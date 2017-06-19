const fotolife = require('hatena-fotolife-api');

const FOTOLIFE_API_KEY = process.env.FOTOLIFE_API_KEY;
const FOTOLIFE_USER_NAME = process.env.FOTOLIFE_USER_NAME;
const FOTOLIFE_FOLDER  = process.env.FOTOLIFE_FOLDER;

const URL = process.argv[2];
const FILE = process.argv[3];

const client = fotolife({
  type    : 'wsse',
  username: FOTOLIFE_USER_NAME,
  apikey  : FOTOLIFE_API_KEY,
});

const options = {
  title    : URL,
  file     : FILE,
  folder   : FOTOLIFE_FOLDER,
  generator: 'https://github.com/hitode909/sketch-20170619',
};

const done = () => {
  console.log(`http://f.hatena.ne.jp/${FOTOLIFE_USER_NAME}/${encodeURIComponent(FOTOLIFE_FOLDER)}/`);
}

client.create(options).then(done).catch(done);
