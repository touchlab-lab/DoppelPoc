package com.squareup.okhttp;

import com.squareup.okhttp.internal.spdy.SpdyHeader;
import java.util.ArrayList;
import java.util.List;

public final class TestUtil {
  private TestUtil() {
  }

  public static List<SpdyHeader> headerEntries(String... elements) {
    List<SpdyHeader> result = new ArrayList<>(elements.length / 2);
    for (int i = 0; i < elements.length; i += 2) {
      result.add(new SpdyHeader(elements[i], elements[i + 1]));
    }
    return result;
  }
}
