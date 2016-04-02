/*
 * Copyright (c) 2011 Google, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.google.common.truth;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.base.Optional;
import com.google.common.collect.ListMultimap;
import com.google.common.collect.Multimap;
import com.google.common.collect.Multiset;
import com.google.common.collect.SetMultimap;
import com.google.common.collect.Table;
import com.google.common.truth.AbstractVerb.DelegatedVerb;

import java.math.BigDecimal;
import java.util.Map;

import javax.annotation.CheckReturnValue;
import javax.annotation.Nullable;

/**
 * Truth - a proposition framework for tests, supporting JUnit style
 * assertion and assumption semantics in a fluent style.
 *
 * <p>Truth is the simplest entry point class. A developer can statically
 * import the assertThat() method to get easy access to the library's
 * capabilities. Then, instead of writing:
 *
 * <pre>   {@code
 *   Assert.assertEquals(a, b);
 *   Assert.assertTrue(c);
 *   Assert.assertTrue(d.contains(a));
 *   Assert.assertTrue(d.contains(a) && d.contains(b));
 *   Assert.assertTrue(d.contains(a) || d.contains(b) || d.contains(c));}</pre>
 * one would write:
 * <pre>   {@code
 *   assertThat(a).isEqualTo(b);
 *   assertThat(c).isTrue();
 *   assertThat(d).contains(a);
 *   assertThat(d).containsAllOf(a, b);
 *   assertThat(d).containsAnyOf(a, b, c);}</pre>
 *
 * <p>Tests should be easier to read, and flow more clearly.
 *
 * <p>Often, tests assert a relationship between a value produced by the test
 * (the "actual" value) and some reference value (the "expected" value). It is
 * strongly recommended that the actual value is made the subject of the
 * assertion. For example:
 * <pre>   {@code
 *   assertThat(actual).isEqualTo(expected);  // recommended
 *   assertThat(expected).isEqualTo(actual);  // not recommended
 *   assertThat(actual).isIn(expectedPossibilities);  // recommended
 *   assertThat(expectedPossibilities).contains(actual);  // not recommended}</pre>
 *
 * @author David Saff
 * @author Christian Gruber (cgruber@israfil.net)
 */
@CheckReturnValue
public final class Truth {

  public static final FailureStrategy THROW_ASSERTION_ERROR =
      new FailureStrategy() {
        @Override public void failComparing(
            String message, CharSequence expected, CharSequence actual) {
          throw Platform.comparisonFailure(message, expected.toString(), actual.toString());
        }
      };

  private static final TestVerb ASSERT = new TestVerb(THROW_ASSERTION_ERROR);

  public static TestVerb assert_() { return ASSERT; }

  /**
   * Returns a {@link TestVerb} that will prepend the given message to the failure message in
   * the event of a test failure.
   */
  public static TestVerb assertWithMessage(String messageToPrepend) {
    return assert_().withFailureMessage(messageToPrepend);
  }

  /**
   * The recommended method of extension of Truth to new types, which is
   * documented in {@link com.google.common.truth.delegation.DelegationTest}.
   *
   * @param factory a SubjectFactory<S, T> implementation
   * @return A custom verb for the type returned by the SubjectFactory
   */
  public static <S extends Subject<S, T>, T, SF extends SubjectFactory<S, T>> DelegatedVerb<S, T>
      assertAbout(SF factory) {
    return assert_().about(factory);
  }

  public static <T extends Comparable<?>> ComparableSubject<?, T> assertThat(@Nullable T target) {
    return assert_().that(target);
  }

  public static BigDecimalSubject assertThat(@Nullable BigDecimal target) {
    return assert_().that(target);
  }

  public static Subject<DefaultSubject, Object> assertThat(@Nullable Object target) {
    return assert_().that(target);
  }

  @GwtIncompatible("ClassSubject.java")
  public static ClassSubject assertThat(@Nullable Class<?> target) {
    return assert_().that(target);
  }

  public static ThrowableSubject assertThat(@Nullable Throwable target) {
    return assert_().that(target);
  }

  public static LongSubject assertThat(@Nullable Long target) {
    return assert_().that(target);
  }

  public static DoubleSubject assertThat(@Nullable Double target) {
    return assert_().that(target);
  }

  public static IntegerSubject assertThat(@Nullable Integer target) {
    return assert_().that(target);
  }

  public static BooleanSubject assertThat(@Nullable Boolean target) {
    return assert_().that(target);
  }

  public static StringSubject assertThat(@Nullable String target) {
    return assert_().that(target);
  }

  public static <T, C extends Iterable<T>> IterableSubject<? extends IterableSubject<?, T, C>, T, C>
      assertThat(@Nullable Iterable<T> target) {
    return assert_().that(target);
  }

  public static <T> ObjectArraySubject<T> assertThat(@Nullable T[] target) {
    return assert_().that(target);
  }

  public static PrimitiveBooleanArraySubject assertThat(@Nullable boolean[] target) {
    return assert_().that(target);
  }

  public static PrimitiveIntArraySubject assertThat(@Nullable int[] target) {
    return assert_().that(target);
  }

  public static PrimitiveLongArraySubject assertThat(@Nullable long[] target) {
    return assert_().that(target);
  }

  public static PrimitiveByteArraySubject assertThat(@Nullable byte[] target) {
    return assert_().that(target);
  }

  public static PrimitiveCharArraySubject assertThat(@Nullable char[] target) {
    return assert_().that(target);
  }

  public static PrimitiveFloatArraySubject assertThat(@Nullable float[] target) {
    return assert_().that(target);
  }

  public static PrimitiveDoubleArraySubject assertThat(@Nullable double[] target) {
    return assert_().that(target);
  }

  public static <T> OptionalSubject<T> assertThat(@Nullable Optional<T> target) {
    return assert_().that(target);
  }

  public static MapSubject assertThat(@Nullable Map<?, ?> target) {
    return assert_().that(target);
  }

  public static <K, V, M extends Multimap<K, V>>
      MultimapSubject<? extends MultimapSubject<?, K, V, M>, K, V, M> assertThat(
          @Nullable Multimap<K, V> target) {
    return assert_().that(target);
  }

  public static <K, V, M extends ListMultimap<K, V>>
      ListMultimapSubject<? extends ListMultimapSubject<?, K, V, M>, K, V, M> assertThat(
          @Nullable ListMultimap<K, V> target) {
    return assert_().that(target);
  }

  public static <K, V, M extends SetMultimap<K, V>>
      SetMultimapSubject<? extends SetMultimapSubject<?, K, V, M>, K, V, M> assertThat(
          @Nullable SetMultimap<K, V> target) {
    return assert_().that(target);
  }

  public static <E, M extends Multiset<E>>
      MultisetSubject<? extends MultisetSubject<?, E, M>, E, M> assertThat(
          @Nullable Multiset<E> target) {
    return assert_().that(target);
  }

  public static TableSubject assertThat(@Nullable Table<?, ?, ?> target) {
    return assert_().that(target);
  }
}
