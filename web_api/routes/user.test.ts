import Koa from "koa";
import json from "koa-json";
import passport from 'koa-passport';
import { router } from '../routes/users';
import request from 'supertest';

const app: Koa = new Koa();

app.use(json());
app.use(passport.initialize());
app.use(router.middleware());


describe('a simple api endpoint', () => {
  test('Search users', async () => {
    const result = await request(app.callback()).get('/api/v1/users')
    .set("Authorization", "Basic YW15OjEyMzQ1Ng==")
      .send(
        {
          'username': 'amy'
        }
      );
    expect(result.statusCode).toEqual(200);
  });

  test('Post a user', async () => {
    const result = await request(app.callback()).post('/api/v1/users')
      .set("Authorization", "Basic YW15OjEyMzQ1Ng==")
      .send(
        {
          "username": "name1",
          "password": "123456",
        }
      );

    expect(result.statusCode).toEqual(201);
  });
});