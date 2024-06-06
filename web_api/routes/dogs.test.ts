import Koa from "koa";
import json from "koa-json";
import passport from 'koa-passport';
import { router } from '../routes/dogs';
import request from 'supertest';

const app: Koa = new Koa();

app.use(json());
app.use(passport.initialize());
app.use(router.middleware());


describe('a simple api endpoint', () => {
  test('Get all dogs', async () => {
    const result = await request(app.callback()).get('/api/v1/dogs');
    expect(result.statusCode).toEqual(200);
  });

  test('Post a dog', async () => {
    const result = await request(app.callback()).post('/api/v1/dogs')
      .set("Authorization", "YW15OjEyMzQ1Ng==")
      .send(
        {
          "dogname": "name",
          "breed": "breed",
          "locationid": "2",
          "writerid": 2,
        }
      );

    expect(result.statusCode).toEqual(400);
  });
});