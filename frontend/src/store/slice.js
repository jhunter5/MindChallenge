import {createSlice,createAsyncThunk} from "@reduxjs/toolkit";

const initialState = {
    email:"",
    token:"",
    loading:false,
    error:""
}
// http://10.0.2.2:3000/api/v1/users
export const signUpUser= createAsyncThunk('signupuser',async(body)=>{
    const res= await fetch("http://localhost:3000/users",{
        method:"post",
        headers:{
            'Content-Type': "application/json"
        },
        body: JSON.stringify(body)
    })
    const headers = res.headers;
    const headersObject = {};
    headers.forEach((value, key) => {
        headersObject[key] = value;
    });
    return {
        data: await res.json(),
        headers: headersObject
    };
})
export const slice = createSlice({
    name: "user",
    initialState,
    reducers:{
        addToken: (state,action)=>{
            state.token = localStorage.getItem("token")
        },
        addUser: (state,action)=>{
            state.user = localStorage.getItem("user")
        },
        logout: (state, action)=>{
            state.token= null;
            localStorage.clear();
        }
    },
    extraReducers: (builder) => {
        builder
            .addCase(signUpUser.pending, (state) => {
                state.loading = true;
            })
            .addCase(signUpUser.fulfilled, (state, action) => {
                state.loading = false;
                if (action.payload.error) {
                    state.error = action.payload.error;
                } else {
                    state.email = action.payload.data.data.email;
                    state.token = action.payload.headers.authorization;
                }
            })
            .addCase(signUpUser.rejected, (state) => {
                state.loading = true;
            });
    }
})
export const {addToken, addUser, logout}= slice.actions;
