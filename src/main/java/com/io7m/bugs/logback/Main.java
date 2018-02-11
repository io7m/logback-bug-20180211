package com.io7m.bugs.logback;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public final class Main
{
  private static final Logger LOG = LoggerFactory.getLogger(Main.class);

  private Main()
  {

  }

  public static void main(final String[] args)
  {
    LOG.debug("hello");
  }
}
