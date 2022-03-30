import { Configuration, SampleTagApi } from './dist'

const conf = new Configuration({
  basePath: 'API server (ex. http://localhost:8080)',
})

const sampleTagApi = new SampleTagApi(conf)
sampleTagApi.apiV1SampleGet
