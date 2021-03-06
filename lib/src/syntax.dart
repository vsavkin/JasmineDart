part of jasmine;

void beforeEach(Function fn, {int priority:0}) =>
    jasmine._context.addBeforeEach(fn, priority: priority);

void afterEach(Function fn, {int priority:0}) =>
    jasmine._context.addAfterEach(fn, priority: priority);


void it(String name, Function fn) =>
    jasmine._context.addIt(name, fn, excluded: false, exclusive: false);

void xit(String name, Function fn) =>
    jasmine._context.addIt(name, fn, excluded: true, exclusive: false);

void iit(String name, Function fn) =>
    jasmine._context.addIt(name, fn, excluded: false, exclusive: true);


void describe(String name, Function fn) =>
    jasmine._context.addDescribe(name, fn, excluded: false, exclusive: false);

void xdescribe(String name, Function fn) =>
    jasmine._context.addDescribe(name, fn, excluded: true, exclusive: false);

void ddescribe(String name, Function fn) =>
    jasmine._context.addDescribe(name, fn, excluded: false, exclusive: true);

Expect expect(actual) => new Expect(actual, jasmine.config.matchers);