import {configureStore} from '@reduxjs/toolkit';
import {slice} from './slice';

// export default configureStore({
//     reducer: {
//         // user: default,
//     }
// })

const store = configureStore({
    reducer:{
        user:slice.reducer
    }
})
export default store
