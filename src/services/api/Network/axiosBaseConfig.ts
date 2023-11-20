import axios, { AxiosInstance } from "axios";
const backendApiAxios:AxiosInstance = axios.create({
    baseURL:process.env.REACT_APP_BACKEND_URL,
    timeout:5000
});

export {backendApiAxios};