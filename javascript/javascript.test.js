const { exec } = require("child_process");

describe('javascript.js script', () => {
    it('should output correct answer to the console', (done) => {
        exec("node javascript.js", (error, stdout, stderr) => {
            expect(error).toBeNull();
            expect(stderr).toBe("");
            expect(stdout.trim()).toBe("h");
            done();
        });
    });
});
