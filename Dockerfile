FROM node:latest AS build
WORKDIR /app
# ARG VITE_BACKEND_URL
# ENV VITE_BACKEND_URL=${VITE_BACKEND_URL}
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM nginx
COPY --from=build /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]