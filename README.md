# NeutralinoV2 + Vite + Vue + Typescript Template

本项目使用[该模板](https://github.com/FeedTheMEe/neutralinojs-vite-vue-ts-template)升级到Neutralino v2

## 安装和设置
1. Get the necessary tools: `yarn global add @neutralinojs/neu`

2. Clone this repository and `cd` into it

3. Move into the `frontend` folder: `cd frontend`

4. Setup the frontend part: `npm i && npm run build`

5. Create a temporary folder in the main project folder called `.tmp` and into it create an empty `auth_info.json`

6. !IMPORTANT! Create a symlink for auth_info (necessary for the backend to work): `cd src && rm ./auth_info.json && ln -s /home/yourusername/path/to/your/project/.tmp/auth_info.json ./auth_info.json`

And you're done with the setup! Yes, it was that easy.


## 启动服务
For us to have hot-reload enabled, we need to run both the neutralino process and frontend separately.

1. Make sure you're in the `frontend` folder and run: `npm run serve`
2. Then create another terminal window instance, cd into the project's base folder and then run `npm run serve:neu`
