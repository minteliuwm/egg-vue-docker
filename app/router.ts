import { Application } from 'egg';

export default (app: Application) => {
  const { controller, router } = app;

  router.get('/api/getAppDesc', controller.home.getAppDesc);

  router.get('*', controller.home.index);
};
