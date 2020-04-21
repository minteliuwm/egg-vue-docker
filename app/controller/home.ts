const Controller = require('egg').Controller;

class HomeController extends Controller {
  async index() {
    const { ctx } = this;

    await ctx.render('index');
  }

  async getAppDesc() {
    const { ctx } = this;

    ctx.body = {
      code: 200,
      msg: 'success',
      result: 'Hello Docker',
    };
  }
}

module.exports = HomeController;
