let mochaTimeout = 100000;

var config = {
    /* Optional maxInstances value limits the number of child processes spawned.
    * Each capability defined gets a child process so that tests automatically run in parallel
    * Refer to for more info https://github.com/webdriverio/webdriverio/issues/205#issuecomment-183345085
    */
    maxInstances: 20,
    capabilities: [
        {browserName: 'firefox', platform: 'Windows 10', version: '41.0'},
        {browserName: 'chrome', platform: 'OS X 10.10', version: '45.0'},
        {browserName: 'internet explorer', platform: 'Windows 7', version: '10'}
    ],

    user: process.env.SAUCE_USERNAME,
    key: process.env.SAUCE_ACCESS_KEY,

    specs: [
        './tests/specs/**/*.js'
    ],

    sync: true,
    logLevel: 'verbose',
    coloredLogs: true,
    screenshotPath: './errorShots/',
    reporters: ['spec'], // Optional with wdio-spec-reporter
    // waitforTimeout: 10000,
    connectionRetryTimeout: 10 * 60000,
    connectionRetryCount: 3,
    framework: 'mocha',
    mochaOpts: {
        ui: 'bdd',
        timeout: mochaTimeout
    }
}

exports.config = config
