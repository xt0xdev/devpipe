import { describe, it, expect } from 'vitest';
import { hello } from '../../packages/hello/src/index';

describe('@devpipe/hello contract', () => {
  it('exports hello() that returns "hello"', () => {
    expect(hello).toBeTypeOf('function');
    expect(hello()).toBe('hello');
  });
});
