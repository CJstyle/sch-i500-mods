.class public Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;
.super Landroid/view/View;
.source "AxT9KeyboardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;,
        Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;,
        Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;
    }
.end annotation


# static fields
.field private static MAX_NEARBY_KEYS:I

.field private static POPUP_YPOS_REVISION:I

.field private static mSymbolHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ALTERNATIVE_POPUP_EMOTICONS_SIZE:I

.field private ALTERNATIVE_POPUP_LABEL_COLOR:I

.field private ALTERNATIVE_POPUP_LABEL_SHADOW_COLOR:I

.field private ALTERNATIVE_POPUP_LABEL_SIZE:I

.field private ALTERNATIVE_POPUP_TEXT_SIZE:I

.field private BG_HANDWRITING_BOX_DIVIDE:Landroid/graphics/drawable/Drawable;

.field private BG_HANDWRITING_BOX_NORMAL:Landroid/graphics/drawable/Drawable;

.field private BG_HANDWRITING_FULL:Landroid/graphics/drawable/Drawable;

.field private BG_KEYPAD_N_QWERTY:Landroid/graphics/drawable/Drawable;

.field private BG_LAND_QWERTY:Landroid/graphics/drawable/Drawable;

.field private CURSOR_HANDLER_LAND_LABEL_SIZE:I

.field private CURSOR_HANDLER_PORT_LABEL_SIZE:I

.field private EMPTY_KEY_LABEL:Ljava/lang/String;

.field private final ERROR:Z

.field private HWR_BOX_LABEL_COLOR:I

.field private HWR_BOX_LABEL_SIZE:I

.field private ID_PHONEPAD_EMOTICONS:I

.field private ID_PHONEPAD_EMOTICONS_PRESS:I

.field private ID_PHONEPAD_ENTER:I

.field private ID_PHONEPAD_ENTER_PRESS:I

.field private ID_PHONEPAD_SEARCH:I

.field private ID_PHONEPAD_SEARCH_PRESS:I

.field private ID_QWERTY_LAND_EMOTICONS:I

.field private ID_QWERTY_LAND_EMOTICONS_PRESS:I

.field private ID_QWERTY_LAND_ENTER:I

.field private ID_QWERTY_LAND_ENTER_PRESS:I

.field private ID_QWERTY_LAND_SEARCH:I

.field private ID_QWERTY_LAND_SEARCH_PRESS:I

.field private ID_QWERTY_PORT_EMOTICONS:I

.field private ID_QWERTY_PORT_EMOTICONS_PRESS:I

.field private ID_QWERTY_PORT_ENTER:I

.field private ID_QWERTY_PORT_ENTER_PRESS:I

.field private ID_QWERTY_PORT_SEARCH:I

.field private ID_QWERTY_PORT_SEARCH_PRESS:I

.field private final INFO:Z

.field private final KEYBOARD_BACKGROUND_COLOR:I

.field private KEY_FUNCTION_SHADOW_COLOR:I

.field private KEY_NORMAL_SHADOW_COLOR:I

.field private LANDQWERTY_ENTERKEY_LABEL_SIZE:I

.field private LANDQWERTY_KEY_LABEL_COLOR_DISABLE:I

.field private LANDQWERTY_KEY_LABEL_COLOR_EXTRA:I

.field private LANDQWERTY_KEY_LABEL_COLOR_FUNCTION:I

.field private LANDQWERTY_KEY_LABEL_COLOR_NORMAL:I

.field private LANDQWERTY_KEY_LABEL_SIZE_EMOTICON:I

.field private LANDQWERTY_KEY_LABEL_SIZE_EXTRA:I

.field private LANDQWERTY_KEY_LABEL_SIZE_FUNCTION:I

.field private LANDQWERTY_KEY_LABEL_SIZE_NORMAL:I

.field private LANDQWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

.field private LAND_QWERTY_ARROWKEY_TEXT_SIZE:I

.field private LANGUAGE_HANDWRITING_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

.field private LANGUAGE_HANDWRITING_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

.field private LANGUAGE_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

.field private LANGUAGE_SPACE_ARROW_LEFT_PRESS:Landroid/graphics/drawable/Drawable;

.field private LANGUAGE_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

.field private LANGUAGE_SPACE_ARROW_RIGHT_PRESS:Landroid/graphics/drawable/Drawable;

.field private MODE_CHANGE_KEYLABEL:Ljava/lang/String;

.field private MONTH_EDITTEXT_LAND_LABEL_SIZE:I

.field private MONTH_EDITTEXT_NUMBER_LABEL_SIZE:I

.field private MONTH_EDITTEXT_PORT_LABEL_SIZE:I

.field private PAGE_KEY_LABEL:Ljava/lang/String;

.field private PHONEPAD_ARROWKEY_TEXT_SIZE:I

.field private PHONEPAD_ENTERKEY_LABEL_SIZE:I

.field private PHONEPAD_KEY_LABEL_COLOR_DISABLE:I

.field private PHONEPAD_KEY_LABEL_COLOR_EXTRA:I

.field private PHONEPAD_KEY_LABEL_COLOR_FUNCTION:I

.field private PHONEPAD_KEY_LABEL_COLOR_NORMAL:I

.field private PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

.field private PHONEPAD_KEY_LABEL_SIZE_EMOTICON:I

.field private PHONEPAD_KEY_LABEL_SIZE_EXTRA:I

.field private PHONEPAD_KEY_LABEL_SIZE_FUNCTION:I

.field private PHONEPAD_KEY_LABEL_SIZE_NORMAL:I

.field private PHONEPAD_KEY_LABEL_SIZE_NUMBER:I

.field private PHONEPAD_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

.field private PHONEPAD_WWW_DOT_COM_KEY_LABEL_SIZE:I

.field private POPUP_KEY_LABEL_COLOR_NORMAL_PRESSED:I

.field private PORT_QWERTY_ARROWKEY_TEXT_SIZE:I

.field private PREVIEW_BG_MORE:Landroid/graphics/drawable/Drawable;

.field private PREVIEW_BG_NORMAL:Landroid/graphics/drawable/Drawable;

.field private PREVIEW_HEIGHT:I

.field private PREVIEW_LABEL_COLOR:I

.field private PREVIEW_LABEL_SIZE_ONE:I

.field private PREVIEW_MIN_WIDTH:I

.field private PREVIEW_WIDTH:I

.field private final PREVIEW_WINDOW_HORIZONTAL_PADDING:I

.field private QWERTY_ENTERKEY_LABEL_SIZE:I

.field private QWERTY_KEY_LABEL_COLOR_DISABLE:I

.field private QWERTY_KEY_LABEL_COLOR_FUNCTION:I

.field private QWERTY_KEY_LABEL_COLOR_NORMAL:I

.field private QWERTY_KEY_LABEL_SIZE_EMOTICON:I

.field private QWERTY_KEY_LABEL_SIZE_FUNCTION:I

.field private QWERTY_KEY_LABEL_SIZE_NORMAL:I

.field private QWERTY_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

.field private QWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

.field private QYPGJ_PREVIEW_PADDING_BOTTOM:I

.field private SWIPE_MAX_LIMITE:I

.field private SWIPE_MIN_LIMITE:I

.field private SWIPE_STANDARD_VALUE:I

.field mAbortKey:Z

.field private mActionButton:Landroid/widget/Button;

.field private mActionPopup:Landroid/widget/PopupWindow;

.field public mActionPopupListener:Landroid/view/View$OnTouchListener;

.field private mActionPopupY:I

.field private mBackgroundDimAmount:F

.field protected mBuffer:Landroid/graphics/Bitmap;

.field mCanvas:Landroid/graphics/Canvas;

.field private mClipRegion:Landroid/graphics/Rect;

.field mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field private mCurrentDotCoDotLocaleIndex:I

.field mCurrentKey:I

.field private mCurrentKeyIndex:I

.field mCurrentKeyTime:J

.field mCurrentTouchKeyIndex:I

.field private mCurrentWwwDotIndex:I

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDisambiguateSwipe:Z

.field mDismissMiniKeyboard:Z

.field mDownKey:I

.field mDownTime:J

.field protected mDrawPending:Z

.field private final mEnableCodeInEmail:Ljava/lang/String;

.field private mFace:Landroid/graphics/Typeface;

.field private mFaceBold:Landroid/graphics/Typeface;

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field mHandler:Landroid/os/Handler;

.field private mIgnoreEvent1:Z

.field private mIgnoreEvent2:Z

.field private mInMultiTap:Z

.field private mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

.field private mIsDomailAllKeyboard:Z

.field private mIsEmoticonsKeyboard:Z

.field mIsInSpaceKey:Z

.field protected mIsMiniKeyboard:Z

.field private mIsModeChangeMiniKeyboard:Z

.field private mIsOneTimeShift:Z

.field mIsSendFirstEvent:Z

.field private mIsShiftedPressed:Z

.field private mIsSymbolsKeyboard:Z

.field private mIsUmlautMiniKeyboard:Z

.field private mIsVerticalKeyboard:Z

.field private mKeyBackground:Landroid/graphics/drawable/Drawable;

.field mKeyIconMgr:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

.field mKeyIndices:[I

.field private mKeyLongPressed:Z

.field private mKeyTextColor:I

.field private mKeyTextSize:I

.field mKeyboard:Landroid/inputmethodservice/Keyboard;

.field mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

.field private mKeyboardChanged:Z

.field private mLabelTextSize:I

.field private mLandQwertyKeyNumberSequence:[Ljava/lang/String;

.field private mLanguageSpaceGap:I

.field mLastCodeX:I

.field mLastCodeY:I

.field mLastKey:I

.field mLastKeyTime:J

.field mLastMoveTime:J

.field private mLastSentIndex:I

.field private mLastTapTime:J

.field mLastX:I

.field mLastY:I

.field protected mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

.field private mMiniKeyboardCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/inputmethodservice/Keyboard$Key;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMiniKeyboardContainer:Landroid/view/View;

.field mMiniKeyboardListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

.field private mMiniKeyboardOffsetX:I

.field private mMiniKeyboardOffsetY:I

.field mMiniKeyboardOnScreen:Z

.field mModeChangeKeyboardListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

.field private mOffsetInWindow:[I

.field protected mOldEventTime:J

.field private mOldPointerCount:I

.field private mOldPointerX:F

.field private mOldPointerY:F

.field private mPadding:Landroid/graphics/Rect;

.field mPaint:Landroid/graphics/Paint;

.field private mPhoneNumberSequence:[Ljava/lang/String;

.field private mPhonepadKeyNumberSequence:[Ljava/lang/String;

.field private mPopupKeyboard:Landroid/widget/PopupWindow;

.field private mPopupLayout:I

.field private mPopupParent:Landroid/view/View;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field mPopupX:I

.field mPopupY:I

.field protected mPossiblePoly:Z

.field private mPreview:Landroid/widget/LinearLayout;

.field private mPreviewCentered:Z

.field private mPreviewHeight:I

.field private mPreviewIconView:Landroid/widget/ImageView;

.field private mPreviewLabel:Ljava/lang/StringBuilder;

.field private mPreviewMainText:Landroid/widget/TextView;

.field private mPreviewOffset:I

.field private mPreviewPopup:Landroid/widget/PopupWindow;

.field private mPreviewPortExtraText:Landroid/widget/TextView;

.field private mProximityThreshold:I

.field mRepeatKeyIndex:I

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mShowPreview:Z

.field private mShowTouchPoints:Z

.field mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

.field mSlidingLocaleDrawable:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

.field private mSpaceArrowVerticalCorrection:F

.field mSpaceKeyIndex:I

.field mSpaceStartX:I

.field private mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

.field mStartX:I

.field mStartY:I

.field private mSwipeThreshold:I

.field mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

.field private mTapCount:I

.field private mTaping:Z

.field mUmlautMgr:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

.field mUmlautMiniKeyboardOnScreen:Z

.field mVerticalCorrection:I

.field private mWindowOffset:[I

.field private misLandscapeMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 367
    const/16 v0, 0x1e

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MAX_NEARBY_KEYS:I

    .line 530
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->POPUP_YPOS_REVISION:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 597
    const/high16 v0, 0x7f01

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 598
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v5, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v4, "N"

    .line 601
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->INFO:Z

    .line 100
    iput-boolean v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ERROR:Z

    .line 190
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 201
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyLongPressed:Z

    .line 208
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    .line 209
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsModeChangeMiniKeyboard:Z

    .line 210
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    .line 211
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonsKeyboard:Z

    .line 212
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSymbolsKeyboard:Z

    .line 213
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsVerticalKeyboard:Z

    .line 218
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentWwwDotIndex:I

    .line 219
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentDotCoDotLocaleIndex:I

    .line 221
    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "N"

    aput-object v4, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v8

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "N"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v3, "4"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "N"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "N"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v3, "N"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "N"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v3, "N"

    aput-object v4, v1, v2

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPhonepadKeyNumberSequence:[Ljava/lang/String;

    .line 229
    const/16 v1, 0x11

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "N"

    aput-object v4, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v8

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "N"

    aput-object v4, v1, v2

    const/4 v2, 0x5

    const-string v3, "4"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "6"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "N"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "N"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v3, "*"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "0"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "#"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "N"

    aput-object v4, v1, v2

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPhoneNumberSequence:[Ljava/lang/String;

    .line 237
    const/16 v1, 0xb

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "N"

    aput-object v4, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v8

    const/4 v2, 0x2

    const-string v3, "2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "3"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "4"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "5"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "8"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "9"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "0"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLandQwertyKeyNumberSequence:[Ljava/lang/String;

    .line 247
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    .line 249
    const-string v1, "1234567890/@._-,"

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mEnableCodeInEmail:Ljava/lang/String;

    .line 254
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    .line 285
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSendFirstEvent:Z

    .line 305
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewCentered:Z

    .line 306
    iput-boolean v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShowPreview:Z

    .line 307
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShowTouchPoints:Z

    .line 328
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 329
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    .line 332
    const/16 v1, 0xc

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIndices:[I

    .line 338
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    .line 342
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 343
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    .line 344
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    invoke-direct {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    .line 348
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceStartX:I

    .line 349
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsInSpaceKey:Z

    .line 350
    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    .line 354
    iput v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerCount:I

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 391
    const/16 v1, 0xff

    const/16 v2, 0x51

    const/16 v3, 0x51

    const/16 v4, 0x51

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEYBOARD_BACKGROUND_COLOR:I

    .line 394
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->POPUP_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    .line 396
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_NORMAL:I

    .line 397
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

    .line 398
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_FUNCTION:I

    .line 399
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_EMOTICON:I

    .line 400
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

    .line 401
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_ENTERKEY_LABEL_SIZE:I

    .line 403
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_NORMAL:I

    .line 404
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_FUNCTION:I

    .line 405
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_DISABLE:I

    .line 407
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_NORMAL:I

    .line 408
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

    .line 409
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_NUMBER:I

    .line 410
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EXTRA:I

    .line 411
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_FUNCTION:I

    .line 412
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EMOTICON:I

    .line 413
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_WWW_DOT_COM_KEY_LABEL_SIZE:I

    .line 414
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ENTERKEY_LABEL_SIZE:I

    .line 416
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL:I

    .line 417
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    .line 418
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_EXTRA:I

    .line 419
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_FUNCTION:I

    .line 420
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_DISABLE:I

    .line 422
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_NORMAL:I

    .line 423
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EXTRA:I

    .line 424
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_FUNCTION:I

    .line 425
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EMOTICON:I

    .line 426
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

    .line 427
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_ENTERKEY_LABEL_SIZE:I

    .line 429
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_NORMAL:I

    .line 430
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_EXTRA:I

    .line 431
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_FUNCTION:I

    .line 432
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_DISABLE:I

    .line 434
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->HWR_BOX_LABEL_SIZE:I

    .line 435
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->HWR_BOX_LABEL_COLOR:I

    .line 437
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_PORT_LABEL_SIZE:I

    .line 438
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_LAND_LABEL_SIZE:I

    .line 440
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_NUMBER_LABEL_SIZE:I

    .line 442
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_PORT_LABEL_SIZE:I

    .line 443
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_LAND_LABEL_SIZE:I

    .line 445
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    .line 446
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_COLOR:I

    .line 448
    iput-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_NORMAL:Landroid/graphics/drawable/Drawable;

    .line 449
    iput-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_MORE:Landroid/graphics/drawable/Drawable;

    .line 451
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_HEIGHT:I

    .line 452
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    .line 460
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LAND_QWERTY_ARROWKEY_TEXT_SIZE:I

    .line 461
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PORT_QWERTY_ARROWKEY_TEXT_SIZE:I

    .line 462
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ARROWKEY_TEXT_SIZE:I

    .line 464
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_COLOR:I

    .line 466
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_SIZE:I

    .line 467
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_TEXT_SIZE:I

    .line 468
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_EMOTICONS_SIZE:I

    .line 470
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_SHADOW_COLOR:I

    .line 471
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_FUNCTION_SHADOW_COLOR:I

    .line 472
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_NORMAL_SHADOW_COLOR:I

    .line 474
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->SWIPE_MAX_LIMITE:I

    .line 475
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->SWIPE_STANDARD_VALUE:I

    .line 476
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->SWIPE_MIN_LIMITE:I

    .line 478
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QYPGJ_PREVIEW_PADDING_BOTTOM:I

    .line 480
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_MIN_WIDTH:I

    .line 482
    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLanguageSpaceGap:I

    .line 483
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceArrowVerticalCorrection:F

    .line 493
    const/16 v1, 0x14

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WINDOW_HORIZONTAL_PADDING:I

    .line 507
    const-string v1, "StrEmpty"

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->EMPTY_KEY_LABEL:Ljava/lang/String;

    .line 508
    const-string v1, "PAGENUM"

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PAGE_KEY_LABEL:Ljava/lang/String;

    .line 509
    const-string v1, "StrModeChange"

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MODE_CHANGE_KEYLABEL:Ljava/lang/String;

    .line 511
    const v1, 0x7f020094

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_ENTER:I

    .line 512
    const v1, 0x7f020095

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_ENTER_PRESS:I

    .line 513
    const v1, 0x7f02009e

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_SEARCH:I

    .line 514
    const v1, 0x7f02009f

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_SEARCH_PRESS:I

    .line 515
    const v1, 0x7f0201a6

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS:I

    .line 516
    const v1, 0x7f0201a7

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS_PRESS:I

    .line 517
    const v1, 0x7f020128

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_ENTER:I

    .line 518
    const v1, 0x7f02012a

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_ENTER_PRESS:I

    .line 519
    const v1, 0x7f020141

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_SEARCH:I

    .line 520
    const v1, 0x7f020143

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_SEARCH_PRESS:I

    .line 521
    const v1, 0x7f0201a6

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_EMOTICONS:I

    .line 522
    const v1, 0x7f0201a7

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_EMOTICONS_PRESS:I

    .line 523
    const v1, 0x7f0201a8

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_ENTER:I

    .line 524
    const v1, 0x7f0201aa

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_ENTER_PRESS:I

    .line 525
    const v1, 0x7f0201c1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_SEARCH:I

    .line 526
    const v1, 0x7f0201c3

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_SEARCH_PRESS:I

    .line 527
    const v1, 0x7f0201a6

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_EMOTICONS:I

    .line 528
    const v1, 0x7f0201a7

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_EMOTICONS_PRESS:I

    .line 557
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    .line 585
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$2;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopupListener:Landroid/view/View$OnTouchListener;

    .line 4513
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$5;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mModeChangeKeyboardListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    .line 4535
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$6;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    .line 4735
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    .line 4736
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    .line 603
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->initVariables()V

    .line 605
    move-object v0, p1

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v1, v0

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 606
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIconMgr:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    .line 607
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mUmlautMgr:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    .line 609
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    .line 610
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSipMgr()Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    .line 613
    const/high16 v1, 0x7f0e

    sget-object v2, Lcom/sec/android/inputmethod/axt9/R$styleable;->AxT9KeyboardView:[I

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 620
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    move v3, v7

    move v4, v7

    .line 623
    :goto_0
    if-ge v3, v2, :cond_0

    .line 624
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 627
    packed-switch v5, :pswitch_data_0

    .line 623
    :goto_1
    :pswitch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 630
    :pswitch_1
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 634
    :pswitch_2
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 638
    :pswitch_3
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mVerticalCorrection:I

    goto :goto_1

    .line 642
    :pswitch_4
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    goto :goto_1

    .line 647
    :pswitch_5
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewOffset:I

    goto :goto_1

    .line 651
    :pswitch_6
    const/16 v6, 0x50

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewHeight:I

    goto :goto_1

    .line 655
    :pswitch_7
    const/16 v6, 0x12

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyTextSize:I

    goto :goto_1

    .line 659
    :pswitch_8
    const/high16 v6, -0x100

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyTextColor:I

    goto :goto_1

    .line 663
    :pswitch_9
    const/16 v6, 0xe

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLabelTextSize:I

    goto :goto_1

    .line 667
    :pswitch_a
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupLayout:I

    goto :goto_1

    .line 671
    :pswitch_b
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    goto :goto_1

    .line 675
    :pswitch_c
    const/high16 v6, 0x3f80

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowRadius:F

    goto :goto_1

    .line 679
    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v1, :cond_1

    .line 680
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeypadBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 685
    :cond_1
    const/high16 v1, 0x3f00

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBackgroundDimAmount:F

    .line 696
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 699
    if-eqz v4, :cond_3

    .line 700
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030009

    invoke-virtual {v1, v2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    .line 702
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    const v2, 0x7f070014

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    .line 703
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    const v2, 0x7f070013

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    .line 704
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    const v2, 0x7f070015

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    .line 706
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 718
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 719
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 724
    :goto_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v7}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 726
    new-instance v1, Landroid/widget/PopupWindow;

    invoke-direct {v1, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 727
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v9}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 731
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->removeActionPopup()V

    .line 732
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 733
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->initActionPopup()V

    .line 737
    :cond_2
    iput-object p0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupParent:Landroid/view/View;

    .line 740
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 743
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 745
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 746
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v2, v7

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 747
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 749
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v7, v7, v7, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 750
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 751
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 753
    const/high16 v1, 0x43fa

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeThreshold:I

    .line 754
    iput-boolean v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDisambiguateSwipe:Z

    .line 755
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->resetMultiTap()V

    .line 756
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->initGestureDetector()V

    .line 757
    return-void

    .line 721
    :cond_3
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShowPreview:Z

    goto :goto_2

    .line 627
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->openPopupIfRequired(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeThreshold:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDisambiguateSwipe:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;II)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getTextSizeFromTheme(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/Paint;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getInputLanguage(Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/Paint;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getNextInputLanguage(Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/Paint;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPrevInputLanguage(Landroid/graphics/Paint;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)Landroid/graphics/Typeface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    return-object v0
.end method

.method private adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "label"

    .prologue
    const/16 v7, 0x130

    const/16 v4, 0x1f

    const/16 v3, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 1218
    if-eqz p1, :cond_a

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v1, v6, :cond_a

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1223
    const-string v1, "eng"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1224
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLastEngCapsMode()Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->CAPSLOCK:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    if-ne v1, v2, :cond_1

    .line 1225
    const-string p1, "ABC"

    .line 1282
    :cond_0
    :goto_0
    if-nez p1, :cond_10

    .line 1283
    const/4 v1, 0x0

    .line 1289
    :goto_1
    return-object v1

    .line 1226
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLastEngCapsMode()Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    move-result-object v1

    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    if-ne v1, v2, :cond_2

    .line 1227
    const-string p1, "Abc"

    goto :goto_0

    .line 1229
    :cond_2
    const-string p1, "abc"

    goto :goto_0

    .line 1231
    :cond_3
    const-string v1, "abc"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Abc"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ABC"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1233
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1235
    :cond_4
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v1, v4, :cond_5

    .line 1236
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "tr"

    const-string v4, "TR"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 1246
    :goto_2
    const-string v1, "SS"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1248
    const/16 v1, 0xdf

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1237
    :cond_5
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v1, v3, :cond_8

    .line 1238
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c2

    if-ne v1, v2, :cond_6

    move-object v1, p1

    goto :goto_1

    .line 1239
    :cond_6
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x131

    if-ne v1, v2, :cond_7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1240
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1242
    :cond_8
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x131

    if-ne v1, v2, :cond_9

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 1243
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 1253
    :cond_a
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_b
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt v1, v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1258
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-eqz v1, :cond_c

    .line 1260
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 1261
    .local v0, code:I
    sparse-switch v0, :sswitch_data_0

    .line 1269
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1262
    :sswitch_0
    const/16 v1, 0x3143

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1263
    :sswitch_1
    const/16 v1, 0x3149

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1264
    :sswitch_2
    const/16 v1, 0x3138

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1265
    :sswitch_3
    const/16 v1, 0x3132

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1266
    :sswitch_4
    const/16 v1, 0x3146

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1267
    :sswitch_5
    const/16 v1, 0x3152

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1268
    :sswitch_6
    const/16 v1, 0x3156

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1272
    .end local v0           #code:I
    :cond_c
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v1, v4, :cond_d

    .line 1273
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Locale;

    const-string v3, "tr"

    const-string v4, "TR"

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1274
    :cond_d
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v1, v3, :cond_f

    .line 1275
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3c2

    if-ne v1, v2, :cond_e

    move-object v1, p1

    goto/16 :goto_1

    .line 1276
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1278
    :cond_f
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 1284
    :cond_10
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PAGE_KEY_LABEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1285
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrnetPageLabel()Ljava/lang/String;

    move-result-object p1

    :cond_11
    :goto_3
    move-object v1, p1

    .line 1289
    goto/16 :goto_1

    .line 1286
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MODE_CHANGE_KEYLABEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1287
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v1

    array-length v1, v1

    if-lt v1, v6, :cond_13

    const/4 v1, 0x1

    :goto_4
    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeKeyLabel(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_13
    move v1, v5

    goto :goto_4

    .line 1261
    :sswitch_data_0
    .sparse-switch
        0x3131 -> :sswitch_3
        0x3137 -> :sswitch_2
        0x3142 -> :sswitch_0
        0x3145 -> :sswitch_4
        0x3148 -> :sswitch_1
        0x3150 -> :sswitch_5
        0x3154 -> :sswitch_6
    .end sparse-switch
.end method

.method private changeCodeToUpperCase(I)I
    .locals 3
    .parameter "code"

    .prologue
    .line 4496
    const/16 v1, 0x20

    sub-int v0, p1, v1

    .line 4498
    .local v0, upperCode:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_2

    .line 4499
    const/16 v1, 0x131

    if-ne p1, v1, :cond_1

    .line 4500
    const/16 v0, 0x49

    .line 4510
    :cond_0
    :goto_0
    return v0

    .line 4501
    :cond_1
    const/16 v1, 0x69

    if-ne p1, v1, :cond_0

    .line 4502
    const/16 v0, 0x130

    goto :goto_0

    .line 4504
    :cond_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v2, 0x22

    if-ne v1, v2, :cond_0

    .line 4505
    const/16 v1, 0x7d

    if-ne p1, v1, :cond_0

    .line 4506
    const/16 v0, 0x42f

    goto :goto_0
.end method

.method private compareIntArray([I[I)Z
    .locals 4
    .parameter "arrayA"
    .parameter "arrayB"

    .prologue
    const/4 v3, 0x0

    .line 5591
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v1, v3

    .line 5603
    :goto_0
    return v1

    .line 5595
    :cond_1
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_4

    .line 5596
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 5597
    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_2

    move v1, v3

    .line 5598
    goto :goto_0

    .line 5596
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5601
    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_4
    move v1, v3

    .line 5603
    goto :goto_0
.end method

.method private computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V
    .locals 7
    .parameter "keyboard"

    .prologue
    .line 1359
    if-nez p1, :cond_1

    .line 1373
    :cond_0
    :goto_0
    return-void

    .line 1360
    :cond_1
    invoke-virtual {p1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 1361
    .local v3, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    if-eqz v3, :cond_0

    .line 1362
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 1363
    .local v4, length:I
    const/4 v0, 0x0

    .line 1364
    .local v0, dimensionSum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 1365
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Key;

    .line 1366
    .local v2, key:Landroid/inputmethodservice/Keyboard$Key;
    iget v5, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->gap:I

    add-int/2addr v5, v6

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    .line 1364
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1368
    .end local v2           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_2
    if-ltz v0, :cond_0

    if-eqz v4, :cond_0

    .line 1371
    mul-int/lit8 v5, v4, 0x2

    div-int v5, v0, v5

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mProximityThreshold:I

    .line 1372
    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mProximityThreshold:I

    iget v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mProximityThreshold:I

    mul-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mProximityThreshold:I

    goto :goto_0
.end method

.method private drawArrowTextBox(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;)V
    .locals 11
    .parameter "keyCanvas"
    .parameter "currentKey"

    .prologue
    const/16 v10, -0x68

    const/16 v9, -0x69

    const/high16 v8, 0x4000

    const v7, 0x3ef0a3d7

    const/4 v6, 0x0

    .line 3225
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 3226
    .local v1, paint:Landroid/graphics/Paint;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3227
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3229
    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 3231
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    iget-boolean v3, p2, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentShadowColor(IZ)I

    move-result v2

    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    .line 3232
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowRadius:F

    const/high16 v3, -0x4080

    const/high16 v4, -0x4080

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3234
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrnetPageLabel()Ljava/lang/String;

    move-result-object v0

    .line 3236
    .local v0, currentPageLabel:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3237
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LAND_QWERTY_ARROWKEY_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3238
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-ne v2, v10, :cond_1

    .line 3280
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 3281
    return-void

    .line 3243
    :cond_1
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-ne v2, v9, :cond_0

    .line 3244
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3245
    iget v2, p2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3251
    :cond_2
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 3252
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PORT_QWERTY_ARROWKEY_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3253
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-eq v2, v10, :cond_0

    .line 3258
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-ne v2, v9, :cond_0

    .line 3259
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3260
    iget v2, p2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3266
    :cond_3
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ARROWKEY_TEXT_SIZE:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3267
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-ne v2, v10, :cond_4

    .line 3268
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3269
    iget v2, p2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    int-to-float v2, v2

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 3272
    :cond_4
    iget-object v2, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    if-ne v2, v9, :cond_0

    .line 3273
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 3274
    const/4 v2, 0x0

    iget v3, p2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    int-to-float v3, v3

    mul-float/2addr v3, v7

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v8

    add-float/2addr v3, v4

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawExtraLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/inputmethodservice/Keyboard$Key;)V
    .locals 8
    .parameter "canvas"
    .parameter "paint"
    .parameter "label"
    .parameter "currentKey"

    .prologue
    const/4 v2, 0x1

    const/high16 v7, 0x4000

    const/high16 v6, 0x4080

    const/4 v5, 0x0

    const/high16 v3, -0x4080

    .line 2998
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 3001
    .local v0, inputMethod:I
    iget-boolean v1, p4, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v1, :cond_0

    .line 3002
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3004
    :cond_0
    if-nez v0, :cond_2

    .line 3005
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3006
    iget-object v1, p4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    iget-boolean v2, p4, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentShadowColor(IZ)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    .line 3007
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowRadius:F

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    invoke-virtual {p2, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3008
    iget v1, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 3049
    :cond_1
    :goto_0
    return-void

    .line 3012
    :cond_2
    if-ne v0, v2, :cond_3

    .line 3013
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3014
    iget-object v1, p4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    iget-boolean v2, p4, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentShadowColor(IZ)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    .line 3015
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowRadius:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3016
    iget v1, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p3, v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    sub-float/2addr v1, v6

    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 3020
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 3021
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 3022
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3023
    iget-object v1, p4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    iget-boolean v2, p4, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentShadowColor(IZ)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    .line 3024
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowRadius:F

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    invoke-virtual {p2, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3025
    iget v1, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 3030
    :cond_4
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3031
    iget-object v1, p4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    iget-boolean v2, p4, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentShadowColor(IZ)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    .line 3032
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowRadius:F

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    invoke-virtual {p2, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3033
    iget v1, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, p3, v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v2, v2, 0x7

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 3039
    :cond_5
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3040
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 3041
    iget-object v1, p4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    iget-boolean v2, p4, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentShadowColor(IZ)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    .line 3042
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowRadius:F

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    invoke-virtual {p2, v1, v3, v3, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 3043
    iget v1, p4, Landroid/inputmethodservice/Keyboard$Key;->width:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p4, Landroid/inputmethodservice/Keyboard$Key;->height:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private getCurrentDisableKeyLabelColor()I
    .locals 3

    .prologue
    .line 2972
    const/4 v1, 0x0

    .line 2975
    .local v1, keyLabelColor:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2978
    .local v0, inputMethod:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2979
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_0

    .line 2980
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_DISABLE:I

    .line 2989
    :goto_0
    return v1

    .line 2982
    :cond_0
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_DISABLE:I

    goto :goto_0

    .line 2984
    :cond_1
    if-nez v0, :cond_2

    .line 2985
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_DISABLE:I

    goto :goto_0

    .line 2987
    :cond_2
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_DISABLE:I

    goto :goto_0
.end method

.method private getCurrentEmoticonKeyLabelSize()I
    .locals 3

    .prologue
    .line 2864
    const/4 v1, 0x0

    .line 2867
    .local v1, keyLabelSize:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2869
    .local v0, inputMethod:I
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v2, :cond_1

    .line 2870
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonsKeyboard:Z

    if-eqz v2, :cond_0

    .line 2871
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_EMOTICONS_SIZE:I

    .line 2886
    :goto_0
    return v1

    .line 2873
    :cond_0
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_TEXT_SIZE:I

    goto :goto_0

    .line 2875
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 2876
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_2

    .line 2877
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EMOTICON:I

    goto :goto_0

    .line 2879
    :cond_2
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_EMOTICON:I

    goto :goto_0

    .line 2881
    :cond_3
    if-nez v0, :cond_4

    .line 2882
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EMOTICON:I

    goto :goto_0

    .line 2884
    :cond_4
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EMOTICON:I

    goto :goto_0
.end method

.method private getCurrentEnterIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    .line 1529
    .line 1531
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShouldShowEmoticon()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1532
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1533
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_0

    .line 1534
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1640
    :goto_0
    return-object v0

    .line 1536
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1538
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_5

    .line 1539
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1540
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_2

    .line 1541
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_EMOTICONS_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1543
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_EMOTICONS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1546
    :cond_3
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_4

    .line 1547
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1549
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1553
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 1554
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_6

    .line 1555
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_EMOTICONS_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1557
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_EMOTICONS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1560
    :cond_7
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_8

    .line 1561
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 1563
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_EMOTICONS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1567
    :cond_9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEditorAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    .line 1568
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v3, :cond_b

    .line 1569
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_a

    .line 1570
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1572
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1574
    :cond_b
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_f

    .line 1575
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_d

    .line 1576
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_c

    .line 1577
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_SEARCH_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1579
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_SEARCH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1582
    :cond_d
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_e

    .line 1583
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_SEARCH_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1585
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_SEARCH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1589
    :cond_f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_11

    .line 1590
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_10

    .line 1591
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_SEARCH_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1593
    :cond_10
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_SEARCH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1596
    :cond_11
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_12

    .line 1597
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_SEARCH_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1599
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_SEARCH:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1604
    :cond_13
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v3, :cond_15

    .line 1605
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_14

    .line 1606
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1608
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1610
    :cond_15
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_19

    .line 1611
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_17

    .line 1612
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_16

    .line 1613
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_ENTER_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1615
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_LAND_ENTER:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1618
    :cond_17
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_18

    .line 1619
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_ENTER_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1621
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_ENTER:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1625
    :cond_19
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_1b

    .line 1626
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1a

    .line 1627
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_ENTER_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1629
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_QWERTY_PORT_ENTER:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1632
    :cond_1b
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1c

    .line 1633
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_ENTER_PRESS:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 1635
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ID_PHONEPAD_ENTER:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getCurrentEnterLabel()Ljava/lang/CharSequence;
    .locals 4

    .prologue
    .line 1504
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEditorAction()I

    move-result v1

    .line 1505
    .local v1, action:I
    const/4 v0, 0x0

    .line 1506
    .local v0, ActionLabel:Ljava/lang/CharSequence;
    packed-switch v1, :pswitch_data_0

    .line 1523
    :pswitch_0
    const-string v0, ""

    .line 1525
    :goto_0
    return-object v0

    .line 1508
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1509
    goto :goto_0

    .line 1511
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a006e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1512
    goto :goto_0

    .line 1514
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1515
    goto :goto_0

    .line 1517
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0071

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1518
    goto :goto_0

    .line 1506
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private getCurrentEnterkeyLabelSize()I
    .locals 3

    .prologue
    .line 2890
    const/4 v1, 0x0

    .line 2892
    .local v1, keyLabelSize:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2893
    .local v0, inputMethod:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2894
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_0

    .line 2895
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_ENTERKEY_LABEL_SIZE:I

    .line 2904
    :goto_0
    return v1

    .line 2897
    :cond_0
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_ENTERKEY_LABEL_SIZE:I

    goto :goto_0

    .line 2899
    :cond_1
    if-nez v0, :cond_2

    .line 2900
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ENTERKEY_LABEL_SIZE:I

    goto :goto_0

    .line 2902
    :cond_2
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ENTERKEY_LABEL_SIZE:I

    goto :goto_0
.end method

.method private getCurrentExtraKeyLabelColor()I
    .locals 3

    .prologue
    .line 2732
    const/4 v1, 0x0

    .line 2735
    .local v1, keyLabelColor:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2738
    .local v0, inputMethod:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2739
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_0

    .line 2740
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_EXTRA:I

    .line 2750
    :goto_0
    return v1

    .line 2742
    :cond_0
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_EXTRA:I

    goto :goto_0

    .line 2745
    :cond_1
    if-nez v0, :cond_2

    .line 2746
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_EXTRA:I

    goto :goto_0

    .line 2748
    :cond_2
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_EXTRA:I

    goto :goto_0
.end method

.method private getCurrentExtraKeyLabelSize()I
    .locals 4

    .prologue
    .line 2754
    const/4 v1, 0x0

    .line 2757
    .local v1, keyLabelSize:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2760
    .local v0, inputMethod:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 2761
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2762
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EXTRA:I

    .line 2774
    :goto_0
    return v1

    .line 2763
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_1

    .line 2764
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EXTRA:I

    goto :goto_0

    .line 2766
    :cond_1
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EXTRA:I

    goto :goto_0

    .line 2769
    :cond_2
    if-nez v0, :cond_3

    .line 2770
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EXTRA:I

    goto :goto_0

    .line 2772
    :cond_3
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EXTRA:I

    goto :goto_0
.end method

.method private getCurrentFunctionKeyLabelColor()I
    .locals 3

    .prologue
    .line 2951
    const/4 v1, 0x0

    .line 2954
    .local v1, keyLabelColor:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2957
    .local v0, inputMethod:I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2958
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_0

    .line 2959
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_FUNCTION:I

    .line 2968
    :goto_0
    return v1

    .line 2961
    :cond_0
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_FUNCTION:I

    goto :goto_0

    .line 2963
    :cond_1
    if-nez v0, :cond_2

    .line 2964
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_FUNCTION:I

    goto :goto_0

    .line 2966
    :cond_2
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_FUNCTION:I

    goto :goto_0
.end method

.method private getCurrentFunctionKeyLabelSize()I
    .locals 4

    .prologue
    .line 2836
    const/4 v1, 0x0

    .line 2837
    .local v1, keyLabelSize:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2839
    .local v0, inputMethod:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 2840
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_0

    .line 2841
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_LAND_LABEL_SIZE:I

    .line 2860
    :goto_0
    return v1

    .line 2843
    :cond_0
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_PORT_LABEL_SIZE:I

    goto :goto_0

    .line 2845
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 2847
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_2

    .line 2848
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_FUNCTION:I

    goto :goto_0

    .line 2850
    :cond_2
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_FUNCTION:I

    goto :goto_0

    .line 2853
    :cond_3
    if-nez v0, :cond_4

    .line 2855
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_FUNCTION:I

    goto :goto_0

    .line 2858
    :cond_4
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_FUNCTION:I

    goto :goto_0
.end method

.method private getCurrentNormalKeyLabelColor()I
    .locals 3

    .prologue
    .line 2927
    const/4 v1, 0x0

    .line 2930
    .local v1, keyLabelColor:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2934
    .local v0, inputMethod:I
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v2, :cond_0

    .line 2935
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_COLOR:I

    .line 2947
    :goto_0
    return v1

    .line 2936
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 2937
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_1

    .line 2938
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_NORMAL:I

    goto :goto_0

    .line 2940
    :cond_1
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_NORMAL:I

    goto :goto_0

    .line 2942
    :cond_2
    if-nez v0, :cond_3

    .line 2943
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL:I

    goto :goto_0

    .line 2945
    :cond_3
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL:I

    goto :goto_0
.end method

.method private getCurrentNormalKeyLabelSize()I
    .locals 6

    .prologue
    const/16 v5, 0x61

    const/16 v4, 0x22

    const/16 v3, 0x19

    const/4 v2, 0x2

    .line 2778
    .line 2780
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsModeChangeMiniKeyboard:Z

    if-nez v0, :cond_0

    .line 2781
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_SIZE:I

    .line 2832
    :goto_0
    return v0

    .line 2782
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 2783
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 2784
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    .line 2786
    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2787
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_1

    .line 2788
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_NUMBER_LABEL_SIZE:I

    goto :goto_0

    .line 2790
    :cond_1
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_NUMBER_LABEL_SIZE:I

    goto :goto_0

    .line 2793
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_3

    .line 2794
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_LAND_LABEL_SIZE:I

    goto :goto_0

    .line 2796
    :cond_3
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_PORT_LABEL_SIZE:I

    goto :goto_0

    .line 2799
    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 2800
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_5

    .line 2801
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_LAND_LABEL_SIZE:I

    goto :goto_0

    .line 2803
    :cond_5
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_PORT_LABEL_SIZE:I

    goto :goto_0

    .line 2805
    :cond_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_a

    .line 2806
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_7

    .line 2807
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_NORMAL:I

    goto :goto_0

    .line 2809
    :cond_7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v5, :cond_8

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v0, v4, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2814
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

    goto :goto_0

    .line 2816
    :cond_9
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_NORMAL:I

    goto :goto_0

    .line 2819
    :cond_a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-nez v0, :cond_d

    .line 2820
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v3, :cond_b

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v5, :cond_b

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v0, v4, :cond_c

    :cond_b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2825
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

    goto/16 :goto_0

    .line 2827
    :cond_c
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_NORMAL:I

    goto/16 :goto_0

    .line 2830
    :cond_d
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_NORMAL:I

    goto/16 :goto_0
.end method

.method private getCurrentShadowColor(IZ)I
    .locals 1
    .parameter "primaryCode"
    .parameter "pressed"

    .prologue
    .line 2719
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v0, :cond_0

    .line 2720
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_SHADOW_COLOR:I

    .line 2727
    :goto_0
    return v0

    .line 2721
    :cond_0
    if-eqz p2, :cond_1

    .line 2722
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_FUNCTION_SHADOW_COLOR:I

    goto :goto_0

    .line 2724
    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLandscapeQwertySoftkeys(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2725
    :cond_2
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_FUNCTION_SHADOW_COLOR:I

    goto :goto_0

    .line 2727
    :cond_3
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_NORMAL_SHADOW_COLOR:I

    goto :goto_0
.end method

.method private getCurrnetPageLabel()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x2f

    .line 1293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1294
    .local v1, pageLabel:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1295
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 1297
    .local v0, inputMethod:I
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-ne v2, v4, :cond_2

    .line 1298
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 1299
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1300
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1301
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1331
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 1303
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1304
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1305
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsEmoticonUsable()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v6

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    move v2, v5

    goto :goto_1

    .line 1308
    :cond_2
    if-ne v0, v5, :cond_4

    .line 1309
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1310
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1311
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsEmoticonUsable()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    move v2, v5

    goto :goto_2

    .line 1312
    :cond_4
    if-nez v0, :cond_7

    .line 1313
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v2

    if-ne v2, v6, :cond_5

    .line 1314
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1315
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1316
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1318
    :cond_5
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1319
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1320
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsEmoticonUsable()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    :goto_3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const/4 v2, 0x5

    goto :goto_3

    .line 1322
    :cond_7
    if-ne v0, v4, :cond_8

    .line 1323
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1324
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1325
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1327
    :cond_8
    const-string v2, "AxT9IME"

    const-string v3, "drawArrowTextBox inputMethod Error!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0
.end method

.method private getDistanceSquare(IIIIII)I
    .locals 4
    .parameter "keyLeft"
    .parameter "keyTop"
    .parameter "keyRight"
    .parameter "keyBottom"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4703
    const/4 v0, 0x0

    .line 4704
    .local v0, distanceSquare:I
    if-le p2, p6, :cond_2

    .line 4705
    if-le p1, p5, :cond_0

    .line 4706
    sub-int v1, p2, p6

    sub-int v2, p2, p6

    mul-int/2addr v1, v2

    sub-int v2, p1, p5

    sub-int v3, p1, p5

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    .line 4729
    :goto_0
    return v0

    .line 4707
    :cond_0
    if-gt p1, p5, :cond_1

    if-lt p3, p5, :cond_1

    .line 4708
    sub-int v1, p2, p6

    sub-int v2, p2, p6

    mul-int v0, v1, v2

    goto :goto_0

    .line 4710
    :cond_1
    sub-int v1, p2, p6

    sub-int v2, p2, p6

    mul-int/2addr v1, v2

    sub-int v2, p5, p3

    sub-int v3, p5, p3

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    goto :goto_0

    .line 4712
    :cond_2
    if-gt p2, p6, :cond_5

    if-lt p4, p6, :cond_5

    .line 4713
    if-le p1, p5, :cond_3

    .line 4714
    sub-int v1, p1, p5

    sub-int v2, p1, p5

    mul-int v0, v1, v2

    goto :goto_0

    .line 4715
    :cond_3
    if-gt p1, p5, :cond_4

    if-lt p3, p5, :cond_4

    .line 4716
    const/4 v0, 0x0

    goto :goto_0

    .line 4718
    :cond_4
    sub-int v1, p5, p3

    sub-int v2, p5, p3

    mul-int v0, v1, v2

    goto :goto_0

    .line 4721
    :cond_5
    if-le p1, p5, :cond_6

    .line 4722
    sub-int v1, p6, p4

    sub-int v2, p6, p4

    mul-int/2addr v1, v2

    sub-int v2, p1, p5

    sub-int v3, p1, p5

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    goto :goto_0

    .line 4723
    :cond_6
    if-gt p1, p5, :cond_7

    if-lt p3, p5, :cond_7

    .line 4724
    sub-int v1, p6, p4

    sub-int v2, p6, p4

    mul-int v0, v1, v2

    goto :goto_0

    .line 4726
    :cond_7
    sub-int v1, p6, p4

    sub-int v2, p6, p4

    mul-int/2addr v1, v2

    sub-int v2, p5, p3

    sub-int v3, p5, p3

    mul-int/2addr v2, v3

    add-int v0, v1, v2

    goto :goto_0
.end method

.method private getDomainKbdId()I
    .locals 3

    .prologue
    .line 4673
    const/4 v0, 0x0

    .line 4674
    .local v0, currentDomainKbdId:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 4675
    const v0, 0x7f050024

    .line 4679
    :goto_0
    return v0

    .line 4677
    :cond_0
    const v0, 0x7f050023

    goto :goto_0
.end method

.method private getExtraKeyLable(I)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v3, 0x2

    const/4 v2, 0x0

    const-string v4, "N"

    .line 1382
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_0
    move-object v0, v2

    .line 1463
    :cond_1
    :goto_0
    return-object v0

    .line 1386
    :cond_2
    const-string v0, ""

    .line 1387
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 1404
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v1, :cond_5

    .line 1405
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, 0xf

    .line 1406
    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x3

    if-eq v1, v0, :cond_8

    if-eq v1, v3, :cond_8

    .line 1412
    if-lt p1, v6, :cond_3

    move-object v0, v2

    .line 1413
    goto :goto_0

    .line 1415
    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLandQwertyKeyNumberSequence:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_4

    move-object v0, v2

    .line 1416
    goto :goto_0

    .line 1419
    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLandQwertyKeyNumberSequence:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 1421
    if-eqz v0, :cond_1

    const-string v1, "N"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v2

    .line 1422
    goto :goto_0

    .line 1428
    :cond_5
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-ne v1, v5, :cond_b

    .line 1429
    if-nez v0, :cond_7

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v1, :cond_7

    .line 1430
    const/16 v0, 0x11

    if-lt p1, v0, :cond_6

    move-object v0, v2

    .line 1431
    goto :goto_0

    .line 1434
    :cond_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPhonepadKeyNumberSequence:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 1435
    const-string v1, "N"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v2

    .line 1436
    goto :goto_0

    .line 1440
    :cond_7
    if-ne v0, v5, :cond_9

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v1, :cond_9

    :cond_8
    move-object v0, v2

    .line 1463
    goto :goto_0

    .line 1442
    :cond_9
    if-ne v0, v3, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1446
    if-lt p1, v6, :cond_a

    move-object v0, v2

    .line 1447
    goto :goto_0

    .line 1450
    :cond_a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLandQwertyKeyNumberSequence:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 1451
    const-string v1, "N"

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, v2

    .line 1452
    goto/16 :goto_0

    :cond_b
    move-object v0, v2

    .line 1459
    goto/16 :goto_0
.end method

.method private getExtraNumIcon(ZILandroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2519
    const/4 v0, 0x0

    .line 2521
    packed-switch p2, :pswitch_data_0

    .line 2676
    :goto_0
    return-object v0

    .line 2523
    :pswitch_0
    if-eqz p1, :cond_1

    .line 2524
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_0

    .line 2525
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2527
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2530
    :cond_1
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_2

    .line 2531
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2533
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2538
    :pswitch_1
    if-eqz p1, :cond_4

    .line 2539
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_3

    .line 2540
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020132

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2542
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2545
    :cond_4
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_5

    .line 2546
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2548
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2553
    :pswitch_2
    if-eqz p1, :cond_7

    .line 2554
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_6

    .line 2555
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2557
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020133

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2560
    :cond_7
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_8

    .line 2561
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2563
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2568
    :pswitch_3
    if-eqz p1, :cond_a

    .line 2569
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_9

    .line 2570
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020136

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2572
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020135

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2575
    :cond_a
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_b

    .line 2576
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2578
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2583
    :pswitch_4
    if-eqz p1, :cond_d

    .line 2584
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_c

    .line 2585
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020138

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2587
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020137

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2590
    :cond_d
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_e

    .line 2591
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2593
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2598
    :pswitch_5
    if-eqz p1, :cond_10

    .line 2599
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_f

    .line 2600
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2602
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2605
    :cond_10
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_11

    .line 2606
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2608
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2613
    :pswitch_6
    if-eqz p1, :cond_13

    .line 2614
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_12

    .line 2615
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2617
    :cond_12
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2620
    :cond_13
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_14

    .line 2621
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2623
    :cond_14
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2628
    :pswitch_7
    if-eqz p1, :cond_16

    .line 2629
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_15

    .line 2630
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2632
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2635
    :cond_16
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_17

    .line 2636
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2638
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2643
    :pswitch_8
    if-eqz p1, :cond_19

    .line 2644
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_18

    .line 2645
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2647
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02013f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2650
    :cond_19
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1a

    .line 2651
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2653
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2658
    :pswitch_9
    if-eqz p1, :cond_1c

    .line 2659
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1b

    .line 2660
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2662
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2665
    :cond_1c
    iget-boolean v0, p3, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1d

    .line 2666
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2668
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 2521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private getFlagDrawPending()Z
    .locals 1

    .prologue
    .line 5454
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDrawPending:Z

    return v0
.end method

.method private getInputLanguage(Landroid/graphics/Paint;)Ljava/lang/String;
    .locals 3
    .parameter "paint"

    .prologue
    .line 8231
    const/4 v0, 0x0

    .line 8232
    .local v0, language:Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 8233
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    aget-object v0, v1, v2

    .line 8237
    :goto_0
    return-object v0

    .line 8235
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 5608
    const/4 v0, 0x0

    .line 5609
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, 0xf

    .line 5611
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    if-nez v2, :cond_2

    .line 5612
    :cond_0
    const/4 v0, 0x0

    .line 6629
    :cond_1
    :goto_0
    return-object v0

    .line 5615
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v2, :cond_3

    .line 5616
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v6

    goto :goto_0

    .line 5625
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_48

    .line 5626
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    sparse-switch v2, :sswitch_data_0

    .line 5966
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    if-le v2, v9, :cond_39

    .line 5968
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getMultitapKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5628
    :sswitch_0
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_4

    .line 5629
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02015b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5631
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020159

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5635
    :sswitch_1
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_5

    .line 5636
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5638
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5642
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v10, :cond_7

    .line 5643
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_6

    .line 5644
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5646
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5649
    :cond_7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 5650
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-nez v0, :cond_9

    .line 5651
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_8

    .line 5652
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5654
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5657
    :cond_9
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_a

    .line 5658
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020154

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5660
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020153

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5664
    :cond_b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5665
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_c

    .line 5666
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020158

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5668
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020156

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5671
    :cond_d
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_e

    .line 5672
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020155

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5674
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5681
    :sswitch_3
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_f

    .line 5682
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5684
    :cond_f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 5685
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5686
    :cond_10
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 5687
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5689
    :cond_11
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5694
    :sswitch_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-nez v0, :cond_12

    if-eq v1, v8, :cond_12

    if-eq v1, v7, :cond_12

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eq v0, v8, :cond_12

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v7, :cond_14

    .line 5703
    :cond_12
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_13

    .line 5704
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5706
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5709
    :cond_14
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_16

    .line 5710
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_15

    .line 5711
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5713
    :cond_15
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5716
    :cond_16
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_17

    .line 5717
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5719
    :cond_17
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5725
    :sswitch_5
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 5726
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020146

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5728
    :cond_18
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_19

    .line 5729
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5731
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5736
    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v10, :cond_1b

    .line 5737
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1a

    .line 5738
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5740
    :cond_1a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5743
    :cond_1b
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1c

    .line 5744
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020127

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5746
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020125

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5751
    :sswitch_7
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1d

    .line 5752
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5754
    :cond_1d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5758
    :sswitch_8
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1e

    .line 5759
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5761
    :cond_1e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5765
    :sswitch_9
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5766
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1f

    .line 5767
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5769
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5774
    :sswitch_a
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5775
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_20

    .line 5776
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5778
    :cond_20
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5783
    :sswitch_b
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5784
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_21

    .line 5785
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5787
    :cond_21
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5792
    :sswitch_c
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5793
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_22

    .line 5794
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5796
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5801
    :sswitch_d
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5802
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_23

    .line 5803
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5805
    :cond_23
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5810
    :sswitch_e
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5811
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_24

    .line 5812
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5814
    :cond_24
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5819
    :sswitch_f
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5820
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_25

    .line 5821
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5823
    :cond_25
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5828
    :sswitch_10
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5829
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_26

    .line 5830
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5832
    :cond_26
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5837
    :sswitch_11
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5838
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_27

    .line 5839
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5841
    :cond_27
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5846
    :sswitch_12
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5847
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_28

    .line 5848
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5850
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5855
    :sswitch_13
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5856
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_29

    .line 5857
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5859
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5864
    :sswitch_14
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5865
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_2a

    .line 5866
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5868
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5874
    :sswitch_15
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_2b

    .line 5875
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5877
    :cond_2b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5882
    :sswitch_16
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_2c

    .line 5883
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5885
    :cond_2c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5890
    :sswitch_17
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_2d

    .line 5891
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5893
    :cond_2d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5898
    :sswitch_18
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_2e

    .line 5899
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5901
    :cond_2e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5906
    :sswitch_19
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 5907
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5909
    :cond_2f
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_30

    .line 5910
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5912
    :cond_30
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5918
    :sswitch_1a
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 5919
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5921
    :cond_31
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_32

    .line 5922
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5924
    :cond_32
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5930
    :sswitch_1b
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_33

    .line 5931
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5933
    :cond_33
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_34

    .line 5934
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5936
    :cond_34
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    if-eqz v0, :cond_35

    .line 5937
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5939
    :cond_35
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5946
    :sswitch_1c
    const/16 v0, -0x12e

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 5947
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_36

    .line 5948
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5950
    :cond_36
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5953
    :cond_37
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5958
    :sswitch_1d
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_38

    .line 5959
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5961
    :cond_38
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5976
    :cond_39
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    .line 5983
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    .line 5984
    if-nez v2, :cond_3a

    move v2, v9

    .line 5989
    :cond_3a
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v3, :cond_3e

    or-int/lit8 v3, v6, 0x4

    .line 5990
    :goto_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-eqz v4, :cond_3c

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-eqz v4, :cond_3c

    :cond_3b
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v4

    if-eqz v4, :cond_3c

    or-int/lit8 v3, v3, 0x1

    .line 5994
    :cond_3c
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-eqz v4, :cond_3d

    or-int/lit8 v3, v3, 0x2

    .line 5995
    :cond_3d
    if-ne v1, v8, :cond_40

    .line 5996
    or-int/lit8 v1, v3, 0x8

    .line 5998
    if-ne v2, v8, :cond_3f

    move v2, v8

    :goto_2
    move v3, v6

    .line 6018
    :goto_3
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIconMgr:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    iget-object v5, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5, v3, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->getKeyIconResourceId(IIII)[I

    move-result-object v1

    .line 6022
    if-eqz v1, :cond_1

    .line 6023
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 6024
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_46

    .line 6025
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_3e
    move v3, v6

    .line 5989
    goto :goto_1

    :cond_3f
    move v2, v7

    .line 5998
    goto :goto_2

    .line 5999
    :cond_40
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_41

    move v1, v3

    move v2, v7

    move v3, v6

    .line 6001
    goto :goto_3

    .line 6002
    :cond_41
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_42

    move v1, v3

    move v2, v7

    move v3, v6

    .line 6004
    goto :goto_3

    .line 6005
    :cond_42
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v4

    if-ne v4, v9, :cond_43

    move v1, v3

    move v2, v7

    move v3, v6

    .line 6007
    goto :goto_3

    .line 6008
    :cond_43
    if-ne v1, v10, :cond_44

    move v1, v3

    move v2, v7

    move v3, v6

    .line 6010
    goto :goto_3

    .line 6011
    :cond_44
    if-ne v1, v7, :cond_45

    move v1, v3

    move v2, v7

    move v3, v6

    .line 6013
    goto :goto_3

    :cond_45
    move v1, v3

    move v3, v7

    .line 6015
    goto :goto_3

    .line 6027
    :cond_46
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6030
    :cond_47
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6036
    :cond_48
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v6

    sparse-switch v2, :sswitch_data_1

    .line 6561
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    if-le v2, v9, :cond_a5

    .line 6563
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getMultitapKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6038
    :sswitch_1e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v7, :cond_4a

    .line 6039
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_49

    .line 6040
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6042
    :cond_49
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6045
    :cond_4a
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_4b

    .line 6046
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6048
    :cond_4b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6053
    :sswitch_1f
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_4c

    .line 6054
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6056
    :cond_4c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6060
    :sswitch_20
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v10, :cond_4e

    .line 6061
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_4d

    .line 6062
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6064
    :cond_4d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6066
    :cond_4e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v7, :cond_56

    .line 6067
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_52

    .line 6068
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-nez v0, :cond_50

    .line 6069
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_4f

    .line 6070
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6072
    :cond_4f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6075
    :cond_50
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_51

    .line 6076
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6078
    :cond_51
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6082
    :cond_52
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_54

    .line 6083
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_53

    .line 6084
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6086
    :cond_53
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6089
    :cond_54
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_55

    .line 6090
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6092
    :cond_55
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6096
    :cond_56
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 6097
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 6098
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_57

    .line 6099
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6101
    :cond_57
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6104
    :cond_58
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 6105
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_59

    .line 6106
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6108
    :cond_59
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6111
    :cond_5a
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_5b

    .line 6112
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6114
    :cond_5b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6124
    :cond_5c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 6125
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_5d

    .line 6126
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6128
    :cond_5d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6131
    :cond_5e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 6132
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_5f

    .line 6133
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6135
    :cond_5f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6138
    :cond_60
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_61

    .line 6139
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6141
    :cond_61
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6148
    :sswitch_21
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 6162
    const-string v1, "AxT9IME"

    const-string v2, "ERROR : Input Method is not Enable!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6150
    :pswitch_0
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_62

    .line 6151
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6153
    :cond_62
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentNumberSymbolsPageNumber()I

    move-result v0

    if-le v0, v9, :cond_63

    .line 6154
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6156
    :cond_63
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6167
    :sswitch_22
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 6196
    :pswitch_1
    const-string v1, "AxT9IME"

    const-string v2, "ERROR : Input Method is not Enable!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6169
    :pswitch_2
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_64

    .line 6170
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6172
    :cond_64
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 6173
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6174
    :cond_65
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 6175
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6177
    :cond_66
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6182
    :pswitch_3
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_67

    .line 6183
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6185
    :cond_67
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 6186
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6187
    :cond_68
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 6188
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6190
    :cond_69
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6201
    :sswitch_23
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    packed-switch v2, :pswitch_data_2

    .line 6263
    :pswitch_4
    const-string v1, "AxT9IME"

    const-string v2, "ERROR : Input Method is not Enable!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 6203
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-nez v0, :cond_6a

    if-eq v1, v8, :cond_6a

    if-eq v1, v7, :cond_6a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eq v0, v8, :cond_6a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v7, :cond_6c

    .line 6212
    :cond_6a
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_6b

    .line 6213
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6215
    :cond_6b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6218
    :cond_6c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_6e

    .line 6219
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_6d

    .line 6220
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6222
    :cond_6d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6225
    :cond_6e
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_6f

    .line 6226
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6228
    :cond_6f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6234
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_70

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-nez v0, :cond_70

    if-eq v1, v8, :cond_70

    if-eq v1, v7, :cond_70

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eq v0, v8, :cond_70

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v7, :cond_72

    .line 6241
    :cond_70
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_71

    .line 6242
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6244
    :cond_71
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6247
    :cond_72
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_74

    .line 6248
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_73

    .line 6249
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6251
    :cond_73
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6254
    :cond_74
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_75

    .line 6255
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6257
    :cond_75
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6268
    :sswitch_24
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v7, :cond_78

    .line 6269
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_76

    .line 6270
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6272
    :cond_76
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_77

    .line 6273
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6275
    :cond_77
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6279
    :cond_78
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassText()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_7a

    :cond_79
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v10, :cond_7d

    .line 6285
    :cond_7a
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 6286
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6288
    :cond_7b
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_7c

    .line 6289
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6291
    :cond_7c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6295
    :cond_7d
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 6296
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6298
    :cond_7e
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_7f

    .line 6299
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6301
    :cond_7f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6308
    :sswitch_25
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v10, :cond_81

    .line 6309
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_80

    .line 6310
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6312
    :cond_80
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6314
    :cond_81
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v7, :cond_83

    .line 6315
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_82

    .line 6316
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6318
    :cond_82
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6321
    :cond_83
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_84

    .line 6322
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020093

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6324
    :cond_84
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020092

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6329
    :sswitch_26
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v7, :cond_86

    .line 6330
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_85

    .line 6331
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6333
    :cond_85
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6336
    :cond_86
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_87

    .line 6337
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6339
    :cond_87
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6345
    :sswitch_27
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v7, :cond_89

    .line 6346
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_88

    .line 6347
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6349
    :cond_88
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6352
    :cond_89
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_8a

    .line 6353
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020100

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6355
    :cond_8a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6361
    :sswitch_28
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6362
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_8b

    .line 6363
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6365
    :cond_8b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6370
    :sswitch_29
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6371
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_8c

    .line 6372
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6374
    :cond_8c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6379
    :sswitch_2a
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6380
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_8d

    .line 6381
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6383
    :cond_8d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6388
    :sswitch_2b
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6389
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_8e

    .line 6390
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6392
    :cond_8e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6397
    :sswitch_2c
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6398
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_8f

    .line 6399
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6401
    :cond_8f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6406
    :sswitch_2d
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6407
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_90

    .line 6408
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6410
    :cond_90
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6415
    :sswitch_2e
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6416
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_91

    .line 6417
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6419
    :cond_91
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6424
    :sswitch_2f
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6425
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_92

    .line 6426
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6428
    :cond_92
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6433
    :sswitch_30
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6434
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_93

    .line 6435
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6437
    :cond_93
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6442
    :sswitch_31
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6443
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_94

    .line 6444
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6446
    :cond_94
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6451
    :sswitch_32
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6452
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_95

    .line 6453
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6455
    :cond_95
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6460
    :sswitch_33
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6461
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_96

    .line 6462
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6464
    :cond_96
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6470
    :sswitch_34
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_97

    .line 6471
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6473
    :cond_97
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6478
    :sswitch_35
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_98

    .line 6479
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6481
    :cond_98
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6486
    :sswitch_36
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_99

    .line 6487
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6489
    :cond_99
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6494
    :sswitch_37
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_9a

    .line 6495
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6497
    :cond_9a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6502
    :sswitch_38
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 6503
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6505
    :cond_9b
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_9c

    .line 6506
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6508
    :cond_9c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6514
    :sswitch_39
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 6515
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6517
    :cond_9d
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_9e

    .line 6518
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6520
    :cond_9e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6526
    :sswitch_3a
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_9f

    .line 6527
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6529
    :cond_9f
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_a0

    .line 6530
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6532
    :cond_a0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    if-eqz v0, :cond_a1

    .line 6533
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6535
    :cond_a1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6542
    :sswitch_3b
    const/16 v0, -0x12e

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 6543
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_a2

    .line 6544
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6546
    :cond_a2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6549
    :cond_a3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6554
    :sswitch_3c
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_a4

    .line 6555
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6557
    :cond_a4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6571
    :cond_a5
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    .line 6578
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    .line 6579
    if-nez v3, :cond_a6

    move v3, v9

    .line 6584
    :cond_a6
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v4, :cond_aa

    or-int/lit8 v4, v6, 0x4

    .line 6585
    :goto_4
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v5

    if-eqz v5, :cond_a8

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v5

    if-eqz v5, :cond_a7

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v5

    if-eqz v5, :cond_a8

    :cond_a7
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v5

    if-eqz v5, :cond_a8

    or-int/lit8 v4, v4, 0x1

    .line 6589
    :cond_a8
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v5

    if-eqz v5, :cond_a9

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v5

    if-eqz v5, :cond_a9

    or-int/lit8 v4, v4, 0x2

    .line 6590
    :cond_a9
    if-ne v1, v8, :cond_ac

    .line 6591
    or-int/lit8 v1, v4, 0x8

    .line 6593
    if-ne v3, v8, :cond_ab

    move v2, v8

    :goto_5
    move v3, v6

    .line 6611
    :goto_6
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIconMgr:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    iget-object v5, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v5, v6

    invoke-virtual {v4, v5, v3, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->getKeyIconResourceId(IIII)[I

    move-result-object v1

    .line 6615
    if-eqz v1, :cond_1

    .line 6616
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v6

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_b2

    .line 6617
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_b1

    .line 6618
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_aa
    move v4, v6

    .line 6584
    goto :goto_4

    :cond_ab
    move v2, v7

    .line 6593
    goto :goto_5

    .line 6594
    :cond_ac
    if-ne v1, v10, :cond_ad

    move v1, v4

    move v2, v7

    move v3, v6

    .line 6596
    goto :goto_6

    .line 6597
    :cond_ad
    if-ne v1, v7, :cond_ae

    move v1, v4

    move v2, v7

    move v3, v6

    .line 6599
    goto :goto_6

    .line 6600
    :cond_ae
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v1

    const/4 v5, 0x6

    if-ne v1, v5, :cond_af

    move v1, v4

    move v2, v7

    move v3, v6

    .line 6602
    goto :goto_6

    .line 6603
    :cond_af
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v1

    const/4 v5, 0x5

    if-ne v1, v5, :cond_b0

    move v1, v4

    move v2, v7

    move v3, v6

    .line 6605
    goto :goto_6

    .line 6606
    :cond_b0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v1

    if-ne v1, v9, :cond_b3

    move v1, v4

    move v2, v7

    move v3, v6

    .line 6608
    goto :goto_6

    .line 6620
    :cond_b1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aget v1, v1, v6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6623
    :cond_b2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    aget v1, v1, v8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_b3
    move v1, v4

    move v11, v3

    move v3, v2

    move v2, v11

    goto :goto_6

    .line 5626
    :sswitch_data_0
    .sparse-switch
        -0x136 -> :sswitch_0
        -0x134 -> :sswitch_18
        -0x133 -> :sswitch_17
        -0x132 -> :sswitch_16
        -0x131 -> :sswitch_15
        -0x130 -> :sswitch_1b
        -0x12f -> :sswitch_1d
        -0x12e -> :sswitch_1c
        -0x12d -> :sswitch_1a
        -0x12c -> :sswitch_19
        -0x98 -> :sswitch_14
        -0x97 -> :sswitch_13
        -0x96 -> :sswitch_12
        -0x95 -> :sswitch_11
        -0x94 -> :sswitch_10
        -0x93 -> :sswitch_f
        -0x92 -> :sswitch_e
        -0x91 -> :sswitch_d
        -0x90 -> :sswitch_c
        -0x8f -> :sswitch_b
        -0x8e -> :sswitch_a
        -0x8d -> :sswitch_9
        -0x72 -> :sswitch_4
        -0x71 -> :sswitch_1
        -0x69 -> :sswitch_8
        -0x68 -> :sswitch_7
        -0x67 -> :sswitch_5
        -0x5 -> :sswitch_6
        -0x1 -> :sswitch_3
        0x20 -> :sswitch_2
    .end sparse-switch

    .line 6036
    :sswitch_data_1
    .sparse-switch
        -0x136 -> :sswitch_1e
        -0x134 -> :sswitch_37
        -0x133 -> :sswitch_36
        -0x132 -> :sswitch_35
        -0x131 -> :sswitch_34
        -0x130 -> :sswitch_3a
        -0x12f -> :sswitch_3c
        -0x12e -> :sswitch_3b
        -0x12d -> :sswitch_39
        -0x12c -> :sswitch_38
        -0x98 -> :sswitch_33
        -0x97 -> :sswitch_32
        -0x96 -> :sswitch_31
        -0x95 -> :sswitch_30
        -0x94 -> :sswitch_2f
        -0x93 -> :sswitch_2e
        -0x92 -> :sswitch_2d
        -0x91 -> :sswitch_2c
        -0x90 -> :sswitch_2b
        -0x8f -> :sswitch_2a
        -0x8e -> :sswitch_29
        -0x8d -> :sswitch_28
        -0x72 -> :sswitch_23
        -0x71 -> :sswitch_1f
        -0x6a -> :sswitch_21
        -0x69 -> :sswitch_27
        -0x68 -> :sswitch_26
        -0x67 -> :sswitch_24
        -0x5 -> :sswitch_25
        -0x1 -> :sswitch_22
        0x20 -> :sswitch_20
    .end sparse-switch

    .line 6148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 6167
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 6201
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getKeyPreviewIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 6633
    .line 6634
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    .line 6636
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    if-nez v1, :cond_1

    :cond_0
    move-object v0, v8

    .line 6843
    :goto_0
    return-object v0

    .line 6640
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v1, :cond_2

    move-object v0, v8

    .line 6641
    goto :goto_0

    .line 6642
    :cond_2
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v1, :cond_f

    .line 6643
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    sparse-switch v1, :sswitch_data_0

    .line 6707
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    .line 6709
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    .line 6710
    if-nez v1, :cond_3

    move v1, v3

    .line 6713
    :cond_3
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_a

    or-int/lit8 v2, v5, 0x4

    .line 6714
    :goto_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v3

    if-eqz v3, :cond_5

    or-int/lit8 v2, v2, 0x1

    .line 6718
    :cond_5
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v3

    if-eqz v3, :cond_6

    or-int/lit8 v2, v2, 0x2

    .line 6719
    :cond_6
    if-ne v0, v7, :cond_c

    .line 6720
    or-int/lit8 v0, v2, 0x8

    .line 6722
    if-ne v1, v7, :cond_b

    move v1, v7

    :goto_2
    move v2, v5

    .line 6733
    :goto_3
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIconMgr:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    iget-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->getKeyIconResourceId(IIII)[I

    move-result-object v0

    .line 6737
    if-eqz v0, :cond_1d

    .line 6738
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v0, v0, v6

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 6645
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02015a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6648
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShouldShowEmoticon()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v8

    goto/16 :goto_0

    .line 6651
    :cond_7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 6655
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6658
    :pswitch_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_1
    move-object v0, v8

    .line 6664
    goto/16 :goto_0

    .line 6669
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-nez v0, :cond_8

    .line 6670
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6672
    :cond_8
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6673
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020157

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6675
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02014e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6680
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6683
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6686
    :sswitch_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6690
    :sswitch_6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6694
    :sswitch_7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6698
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6702
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    move v2, v5

    .line 6713
    goto/16 :goto_1

    :cond_b
    move v1, v6

    .line 6722
    goto/16 :goto_2

    .line 6723
    :cond_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v3, 0x6

    if-ne v0, v3, :cond_d

    move v0, v2

    move v1, v6

    move v2, v5

    .line 6725
    goto/16 :goto_3

    .line 6726
    :cond_d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_e

    move v0, v2

    move v1, v6

    move v2, v5

    .line 6728
    goto/16 :goto_3

    :cond_e
    move v0, v2

    move v2, v6

    .line 6730
    goto/16 :goto_3

    .line 6743
    :cond_f
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v5

    sparse-switch v1, :sswitch_data_1

    .line 6805
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v1

    .line 6806
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    .line 6807
    if-nez v2, :cond_10

    move v2, v3

    .line 6810
    :cond_10
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v3, :cond_17

    or-int/lit8 v3, v5, 0x4

    .line 6811
    :goto_4
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-eqz v4, :cond_12

    :cond_11
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v4

    if-eqz v4, :cond_12

    or-int/lit8 v3, v3, 0x1

    .line 6815
    :cond_12
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-eqz v4, :cond_13

    or-int/lit8 v3, v3, 0x2

    .line 6816
    :cond_13
    if-ne v0, v7, :cond_19

    .line 6817
    or-int/lit8 v0, v3, 0x8

    .line 6819
    if-ne v2, v7, :cond_18

    move v1, v7

    :goto_5
    move v2, v5

    .line 6833
    :goto_6
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIconMgr:Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;

    iget-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyIconMgr;->getKeyIconResourceId(IIII)[I

    move-result-object v0

    .line 6837
    if-eqz v0, :cond_1d

    .line 6838
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    aget v0, v0, v6

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6745
    :sswitch_a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6748
    :sswitch_b
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShouldShowEmoticon()Z

    move-result v0

    if-eqz v0, :cond_14

    move-object v0, v8

    goto/16 :goto_0

    .line 6751
    :cond_14
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 6755
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6758
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_3
    move-object v0, v8

    .line 6764
    goto/16 :goto_0

    .line 6769
    :sswitch_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-nez v0, :cond_15

    .line 6770
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6772
    :cond_15
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 6773
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6775
    :cond_16
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6780
    :sswitch_d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6783
    :sswitch_e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6786
    :sswitch_f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6789
    :sswitch_10
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6793
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6797
    :sswitch_12
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6801
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    :cond_17
    move v3, v5

    .line 6810
    goto/16 :goto_4

    :cond_18
    move v1, v6

    .line 6819
    goto/16 :goto_5

    .line 6820
    :cond_19
    const/4 v4, 0x4

    if-ne v0, v4, :cond_1a

    move v0, v3

    move v1, v2

    move v2, v5

    .line 6821
    goto/16 :goto_6

    .line 6822
    :cond_1a
    if-ne v0, v6, :cond_1b

    move v0, v3

    move v1, v6

    move v2, v5

    .line 6824
    goto/16 :goto_6

    .line 6825
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_1c

    move v0, v3

    move v1, v6

    move v2, v5

    .line 6827
    goto/16 :goto_6

    .line 6828
    :cond_1c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1e

    move v0, v3

    move v1, v6

    move v2, v5

    .line 6830
    goto/16 :goto_6

    :cond_1d
    move-object v0, v8

    goto/16 :goto_0

    :cond_1e
    move v0, v3

    move v9, v2

    move v2, v1

    move v1, v9

    goto/16 :goto_6

    .line 6643
    nop

    :sswitch_data_0
    .sparse-switch
        -0x136 -> :sswitch_0
        -0x134 -> :sswitch_9
        -0x133 -> :sswitch_8
        -0x132 -> :sswitch_7
        -0x131 -> :sswitch_6
        -0x67 -> :sswitch_4
        -0x5 -> :sswitch_5
        -0x1 -> :sswitch_3
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch

    .line 6651
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 6743
    :sswitch_data_1
    .sparse-switch
        -0x136 -> :sswitch_a
        -0x134 -> :sswitch_13
        -0x133 -> :sswitch_12
        -0x132 -> :sswitch_11
        -0x131 -> :sswitch_10
        -0x67 -> :sswitch_e
        -0x5 -> :sswitch_f
        -0x1 -> :sswitch_d
        0xa -> :sswitch_b
        0x20 -> :sswitch_c
    .end sparse-switch

    .line 6751
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private getKeypadBackground()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 948
    const/4 v0, 0x0

    .line 949
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v1, :cond_0

    .line 950
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_LAND_QWERTY:Landroid/graphics/drawable/Drawable;

    .line 975
    :goto_0
    return-object v0

    .line 952
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 970
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_KEYPAD_N_QWERTY:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 955
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_KEYPAD_N_QWERTY:Landroid/graphics/drawable/Drawable;

    .line 956
    goto :goto_0

    .line 958
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_FULL:Landroid/graphics/drawable/Drawable;

    .line 959
    goto :goto_0

    .line 961
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_BOX_DIVIDE:Landroid/graphics/drawable/Drawable;

    .line 962
    goto :goto_0

    .line 964
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_BOX_NORMAL:Landroid/graphics/drawable/Drawable;

    .line 965
    goto :goto_0

    .line 952
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method private getModeBoxLabel(I)Ljava/lang/String;
    .locals 4
    .parameter "box"

    .prologue
    .line 7656
    const/4 v0, 0x0

    .line 7657
    .local v0, label:Ljava/lang/String;
    const/4 v1, 0x0

    .line 7659
    .local v1, labelResId:I
    packed-switch p1, :pswitch_data_0

    .line 7681
    const v1, 0x7f0a0072

    .line 7685
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7686
    return-object v0

    .line 7661
    :pswitch_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageID()S

    move-result v2

    const/16 v3, 0x12

    if-ne v2, v3, :cond_0

    .line 7662
    const v1, 0x7f0a0073

    goto :goto_0

    .line 7664
    :cond_0
    const v1, 0x7f0a0072

    .line 7666
    goto :goto_0

    .line 7671
    :pswitch_1
    const v1, 0x7f0a0072

    .line 7673
    goto :goto_0

    .line 7675
    :pswitch_2
    const v1, 0x7f0a0074

    .line 7676
    goto :goto_0

    .line 7678
    :pswitch_3
    const v1, 0x7f0a0075

    .line 7679
    goto :goto_0

    .line 7659
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getModeKeyLabel(Z)Ljava/lang/String;
    .locals 3
    .parameter "currentMode"

    .prologue
    .line 7633
    const/4 v0, 0x0

    .line 7634
    .local v0, label:Ljava/lang/String;
    const/4 v1, 0x0

    .line 7635
    .local v1, labelResId:I
    if-eqz p1, :cond_4

    .line 7637
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7638
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a003b

    move v1, v2

    .line 7650
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7651
    return-object v0

    .line 7638
    :cond_0
    const v2, 0x7f0a0035

    move v1, v2

    goto :goto_0

    .line 7639
    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7640
    const v1, 0x7f0a003c

    goto :goto_0

    .line 7641
    :cond_2
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isSymbolMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7642
    const v1, 0x7f0a003d

    goto :goto_0

    .line 7644
    :cond_3
    const v1, 0x7f0a0035

    goto :goto_0

    .line 7647
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getNextModeStringId()I

    move-result v1

    goto :goto_0
.end method

.method private getMultitapKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f020104

    const v4, 0x7f020103

    .line 6847
    const/4 v0, 0x0

    .line 6848
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 6849
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->compareIntArray([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 6850
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6851
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_1

    .line 6852
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 6905
    :cond_0
    :goto_0
    return-object v0

    .line 6854
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 6857
    :cond_2
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_3

    .line 6858
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 6860
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 6863
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->compareIntArray([I[I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 6864
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_6

    .line 6865
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_5

    .line 6866
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 6868
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 6871
    :cond_6
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_7

    .line 6872
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 6874
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 6877
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->compareIntArray([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6878
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 6879
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_9

    .line 6880
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6882
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6885
    :cond_a
    iget-boolean v0, p1, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-eqz v0, :cond_b

    .line 6886
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 6888
    :cond_b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getNextInputLanguage(Landroid/graphics/Paint;)Ljava/lang/String;
    .locals 4
    .parameter "paint"

    .prologue
    .line 8241
    const/4 v1, 0x0

    .line 8242
    .local v1, nextIndex:I
    const/4 v0, 0x0

    .line 8243
    .local v0, language:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 8244
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 8245
    const/4 v1, 0x0

    .line 8247
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 8248
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v2, v3

    .line 8252
    :goto_0
    return-object v0

    .line 8250
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getNextModeStringId()I
    .locals 8

    .prologue
    .line 7690
    const/4 v3, 0x0

    .line 7692
    .local v3, id:I
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputModeCode()I

    move-result v4

    .line 7693
    .local v4, modeCode:I
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v1

    .line 7695
    .local v1, enableInputMode:[I
    const/4 v0, -0x1

    .line 7696
    .local v0, currentIndex:I
    const/4 v5, -0x1

    .line 7697
    .local v5, nextModeCode:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_0

    .line 7698
    aget v6, v1, v2

    if-ne v4, v6, :cond_1

    .line 7699
    move v0, v2

    .line 7704
    :cond_0
    array-length v6, v1

    add-int/lit8 v7, v0, 0x1

    if-le v6, v7, :cond_2

    .line 7705
    add-int/lit8 v6, v0, 0x1

    aget v5, v1, v6

    .line 7710
    :goto_1
    sparse-switch v5, :sswitch_data_0

    .line 7851
    :goto_2
    return v3

    .line 7697
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7707
    :cond_2
    const/4 v6, 0x0

    aget v5, v1, v6

    goto :goto_1

    .line 7712
    :sswitch_0
    const v3, 0x7f0a0035

    .line 7713
    goto :goto_2

    .line 7715
    :sswitch_1
    const v3, 0x7f0a003b

    .line 7716
    goto :goto_2

    .line 7718
    :sswitch_2
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 7719
    const v3, 0x7f0a003b

    goto :goto_2

    .line 7721
    :cond_3
    const v3, 0x7f0a0035

    .line 7723
    goto :goto_2

    .line 7725
    :sswitch_3
    const v3, 0x7f0a003c

    .line 7726
    goto :goto_2

    .line 7728
    :sswitch_4
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 7729
    const v3, 0x7f0a003e

    goto :goto_2

    .line 7731
    :cond_4
    const v3, 0x7f0a003d

    goto :goto_2

    .line 7710
    nop

    :sswitch_data_0
    .sparse-switch
        -0x89 -> :sswitch_0
        -0x88 -> :sswitch_1
        -0x7c -> :sswitch_2
        -0x6e -> :sswitch_4
        -0x6d -> :sswitch_3
    .end sparse-switch
.end method

.method private getPopupKeyboardPosX(Landroid/inputmethodservice/Keyboard$Key;ZZ)I
    .locals 5
    .parameter "key"
    .parameter "isVerticalMiniKeyboard"
    .parameter "isModeChangeMiniKeyboard"

    .prologue
    .line 4598
    const/4 v0, 0x0

    .line 4599
    .local v0, posX:I
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    move v1, v2

    .line 4600
    .local v1, shouldLeft:Z
    :goto_0
    if-eqz p2, :cond_6

    .line 4601
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4602
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    .line 4604
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int v0, v2, v3

    .line 4605
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    .line 4644
    :goto_1
    return v0

    .line 4599
    .end local v1           #shouldLeft:Z
    :cond_0
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 4606
    .restart local v1       #shouldLeft:Z
    :cond_1
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 4607
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    goto :goto_1

    .line 4609
    :cond_2
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int v0, v2, v3

    goto :goto_1

    .line 4612
    :cond_3
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_4

    if-eqz p3, :cond_4

    .line 4615
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int v0, v2, v3

    .line 4616
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v0, v2

    goto :goto_1

    .line 4617
    :cond_4
    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v2, :cond_5

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v3, 0x7f050026

    if-eq v2, v3, :cond_5

    .line 4618
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    goto :goto_1

    .line 4620
    :cond_5
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int v0, v2, v3

    goto :goto_1

    .line 4629
    :cond_6
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4630
    if-nez v1, :cond_7

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_7

    .line 4631
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int v0, v2, v3

    goto/16 :goto_1

    .line 4633
    :cond_7
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int v0, v2, v3

    goto/16 :goto_1

    .line 4636
    :cond_8
    if-nez v1, :cond_9

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_9

    .line 4637
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int v0, v2, v3

    goto/16 :goto_1

    .line 4639
    :cond_9
    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, p1, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int v0, v2, v3

    goto/16 :goto_1
.end method

.method private getPopupKeyboardPosY(Landroid/inputmethodservice/Keyboard$Key;ZZ)I
    .locals 4
    .parameter "key"
    .parameter "isVerticalMiniKeyboard"
    .parameter "isModeChangeMiniKeyboard"

    .prologue
    .line 4559
    const/4 v0, 0x0

    .line 4561
    .local v0, posY:I
    if-eqz p2, :cond_3

    .line 4562
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4563
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    .line 4565
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v0, v1, v2

    .line 4592
    :goto_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mWindowOffset:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 4594
    return v0

    .line 4567
    :cond_0
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0

    .line 4570
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    if-eqz p3, :cond_2

    .line 4573
    iget v1, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v2, p1, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v0, v1, v2

    goto :goto_0

    .line 4576
    :cond_2
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 4577
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4578
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4579
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0

    .line 4584
    :cond_3
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 4586
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4587
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4588
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPrevInputLanguage(Landroid/graphics/Paint;)Ljava/lang/String;
    .locals 5
    .parameter "paint"

    .prologue
    const/4 v4, 0x1

    .line 8256
    const/4 v1, 0x0

    .line 8257
    .local v1, prevIndex:I
    const/4 v0, 0x0

    .line 8258
    .local v0, language:Ljava/lang/String;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sub-int v1, v2, v4

    .line 8259
    if-gez v1, :cond_0

    .line 8260
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int v1, v2, v4

    .line 8262
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 8263
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v0, v2, v3

    .line 8267
    :goto_0
    return-object v0

    .line 8265
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v2, v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v3, v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v2, v2, v3

    invoke-static {v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreviewLabelSize(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/CharSequence;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x3f4ccccd

    const v4, 0x3f333333

    const v3, 0x3f19999a

    const/high16 v2, 0x3f00

    const v1, 0x3ecccccd

    .line 3828
    .line 3829
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3830
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3862
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3915
    :goto_0
    return v0

    .line 3832
    :pswitch_0
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    goto :goto_0

    .line 3835
    :pswitch_1
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    goto :goto_0

    .line 3838
    :pswitch_2
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    const v1, 0x3f666666

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3839
    goto :goto_0

    .line 3841
    :pswitch_3
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 3842
    goto :goto_0

    .line 3844
    :pswitch_4
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 3845
    goto :goto_0

    .line 3847
    :pswitch_5
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 3848
    goto :goto_0

    .line 3850
    :pswitch_6
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 3851
    goto :goto_0

    .line 3866
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 3898
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    const v1, 0x3e4ccccd

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    .line 3868
    :pswitch_7
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    goto :goto_0

    .line 3871
    :pswitch_8
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 3872
    goto :goto_0

    .line 3874
    :pswitch_9
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 3875
    goto :goto_0

    .line 3877
    :pswitch_a
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    float-to-int v0, v0

    .line 3878
    goto :goto_0

    .line 3880
    :pswitch_b
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 3881
    goto :goto_0

    .line 3883
    :pswitch_c
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3884
    goto :goto_0

    .line 3886
    :pswitch_d
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    int-to-float v0, v0

    const v1, 0x3e99999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 3887
    goto :goto_0

    .line 3830
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 3866
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "key"

    .prologue
    const v5, 0x7f0a00a6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3472
    const/4 v0, 0x0

    .line 3474
    .local v0, text:Ljava/lang/String;
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 3475
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShouldShowEmoticon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3476
    const-string v0, ":-)"

    .line 3522
    :cond_0
    :goto_0
    return-object v0

    .line 3478
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 3498
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 3480
    :pswitch_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3481
    goto :goto_0

    .line 3483
    :pswitch_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3484
    goto :goto_0

    .line 3486
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3487
    goto :goto_0

    .line 3489
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0071

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3490
    goto :goto_0

    .line 3492
    :pswitch_5
    const/4 v0, 0x0

    .line 3493
    goto :goto_0

    .line 3495
    :pswitch_6
    const/4 v0, 0x0

    .line 3496
    goto :goto_0

    .line 3502
    :cond_2
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->EMPTY_KEY_LABEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 3503
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3505
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x66

    if-ne v1, v2, :cond_4

    .line 3506
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v1

    array-length v1, v1

    if-gt v1, v4, :cond_3

    move v1, v4

    :goto_1
    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeKeyLabel(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_1

    .line 3507
    :cond_4
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0xc9

    if-ne v1, v2, :cond_6

    .line 3508
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    if-eqz v1, :cond_5

    .line 3509
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3511
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3513
    :cond_6
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0xca

    if-ne v1, v2, :cond_7

    .line 3514
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3515
    :cond_7
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x6f

    if-ne v1, v2, :cond_0

    .line 3516
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3518
    :cond_8
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, -0x69

    if-ne v1, v2, :cond_0

    .line 3519
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrnetPageLabel()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3478
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private getSymbolArrowKeyPressBG(I)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f02011e

    const v5, 0x7f02011d

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2680
    const/4 v0, 0x0

    .line 2681
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, 0xf

    .line 2683
    const/16 v2, -0x68

    if-ne p1, v2, :cond_3

    .line 2684
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_1

    .line 2685
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2715
    :cond_0
    :goto_0
    return-object v0

    .line 2687
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-eq v0, v3, :cond_2

    if-eq v1, v4, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 2692
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2694
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2697
    :cond_3
    const/16 v2, -0x69

    if-ne p1, v2, :cond_0

    .line 2698
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_4

    .line 2699
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2701
    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-eq v0, v3, :cond_5

    if-eq v1, v4, :cond_5

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-eq v0, v3, :cond_5

    .line 2706
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 2708
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private getTextSizeFromTheme(II)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 8224
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010095

    aput v2, v1, v3

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 8226
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 8227
    return v0
.end method

.method private getWwwDotComKeyLabelSize()I
    .locals 3

    .prologue
    .line 2908
    const/4 v1, 0x0

    .line 2909
    .local v1, keyLabelSize:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    .line 2910
    .local v0, inputMethod:I
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v2, :cond_0

    .line 2911
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_TEXT_SIZE:I

    .line 2923
    :goto_0
    return v1

    .line 2912
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 2913
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v2, :cond_1

    .line 2914
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

    goto :goto_0

    .line 2916
    :cond_1
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

    goto :goto_0

    .line 2918
    :cond_2
    if-nez v0, :cond_3

    .line 2919
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_WWW_DOT_COM_KEY_LABEL_SIZE:I

    goto :goto_0

    .line 2921
    :cond_3
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_WWW_DOT_COM_KEY_LABEL_SIZE:I

    goto :goto_0
.end method

.method private hasNumberPopup(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 8
    .parameter "popupKey"

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x0

    .line 4084
    const/4 v0, 0x0

    .line 4086
    .local v0, hasPopup:Z
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v4

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 4088
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 4092
    const/4 v1, 0x0

    .local v1, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v7, :cond_1

    move v3, v7

    .end local p0
    .local v3, n:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 4093
    iget-object v4, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v5, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v5, v6

    if-ne v4, v5, :cond_2

    .line 4094
    const/4 v0, 0x1

    .line 4100
    .end local v1           #i:I
    .end local v3           #n:I
    :cond_0
    return v0

    .line 4092
    .restart local v1       #i:I
    .restart local p0
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    move v3, v4

    goto :goto_0

    .end local p0
    .restart local v3       #n:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private initGestureDetector()V
    .locals 3

    .prologue
    .line 979
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;

    invoke-direct {v2, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 1046
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 1047
    return-void
.end method

.method private initVariables()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 760
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 763
    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->POPUP_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    .line 765
    const v1, 0x7f080006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_NORMAL:I

    .line 766
    const v1, 0x7f080007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

    .line 767
    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_FUNCTION:I

    .line 768
    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_EMOTICON:I

    .line 769
    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

    .line 770
    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_ENTERKEY_LABEL_SIZE:I

    .line 772
    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_NORMAL:I

    .line 773
    const v1, 0x7f0d000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_FUNCTION:I

    .line 774
    const v1, 0x7f0d000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_COLOR_DISABLE:I

    .line 776
    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_NORMAL:I

    .line 777
    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_RUSSIAN_KEY_LABEL_SIZE_NORMAL:I

    .line 778
    const v1, 0x7f08000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_NUMBER:I

    .line 779
    const v1, 0x7f08000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EXTRA:I

    .line 780
    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_FUNCTION:I

    .line 781
    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_SIZE_EMOTICON:I

    .line 782
    const v1, 0x7f080012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_WWW_DOT_COM_KEY_LABEL_SIZE:I

    .line 783
    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ENTERKEY_LABEL_SIZE:I

    .line 785
    const v1, 0x7f0d000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL:I

    .line 786
    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    .line 787
    const v1, 0x7f0d000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_EXTRA:I

    .line 788
    const v1, 0x7f0d000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_FUNCTION:I

    .line 789
    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_DISABLE:I

    .line 791
    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_NORMAL:I

    .line 792
    const v1, 0x7f080015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EXTRA:I

    .line 793
    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_FUNCTION:I

    .line 794
    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_SIZE_EMOTICON:I

    .line 795
    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_WWW_DOT_COM_KEY_LABEL_SIZE:I

    .line 796
    const v1, 0x7f080019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_ENTERKEY_LABEL_SIZE:I

    .line 798
    const v1, 0x7f0d0011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_NORMAL:I

    .line 799
    const v1, 0x7f0d0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_EXTRA:I

    .line 800
    const v1, 0x7f0d0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_FUNCTION:I

    .line 801
    const v1, 0x7f0d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANDQWERTY_KEY_LABEL_COLOR_DISABLE:I

    .line 803
    const v1, 0x7f08001a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->HWR_BOX_LABEL_SIZE:I

    .line 804
    const v1, 0x7f0d0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->HWR_BOX_LABEL_COLOR:I

    .line 806
    const v1, 0x7f08001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_PORT_LABEL_SIZE:I

    .line 807
    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_LAND_LABEL_SIZE:I

    .line 809
    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MONTH_EDITTEXT_NUMBER_LABEL_SIZE:I

    .line 811
    const v1, 0x7f08001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_PORT_LABEL_SIZE:I

    .line 812
    const v1, 0x7f08001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->CURSOR_HANDLER_LAND_LABEL_SIZE:I

    .line 814
    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_LABEL_SIZE_ONE:I

    .line 816
    const v1, 0x7f020230

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_NORMAL:Landroid/graphics/drawable/Drawable;

    .line 817
    const v1, 0x7f020231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_MORE:Landroid/graphics/drawable/Drawable;

    .line 819
    const v1, 0x7f080028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_HEIGHT:I

    .line 820
    const v1, 0x7f080029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    .line 822
    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_MIN_WIDTH:I

    .line 824
    const-string v1, "/system/fonts/DroidSans.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    .line 825
    const-string v1, "/system/fonts/DroidSans-Bold.ttf"

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    .line 827
    const v1, 0x7f020226

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_KEYPAD_N_QWERTY:Landroid/graphics/drawable/Drawable;

    .line 828
    const v1, 0x7f020227

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_LAND_QWERTY:Landroid/graphics/drawable/Drawable;

    .line 829
    const v1, 0x7f020223

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_FULL:Landroid/graphics/drawable/Drawable;

    .line 830
    const v1, 0x7f020224

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_BOX_DIVIDE:Landroid/graphics/drawable/Drawable;

    .line 831
    const v1, 0x7f020225

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_BOX_NORMAL:Landroid/graphics/drawable/Drawable;

    .line 833
    const v1, 0x7f08001f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LAND_QWERTY_ARROWKEY_TEXT_SIZE:I

    .line 834
    const v1, 0x7f080020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PORT_QWERTY_ARROWKEY_TEXT_SIZE:I

    .line 835
    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_ARROWKEY_TEXT_SIZE:I

    .line 837
    const v1, 0x7f0d0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_COLOR:I

    .line 839
    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_SIZE:I

    .line 840
    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_TEXT_SIZE:I

    .line 841
    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_EMOTICONS_SIZE:I

    .line 843
    const v1, 0x7f0d0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->ALTERNATIVE_POPUP_LABEL_SHADOW_COLOR:I

    .line 844
    const v1, 0x7f0d0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_FUNCTION_SHADOW_COLOR:I

    .line 845
    const v1, 0x7f0d0017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->KEY_NORMAL_SHADOW_COLOR:I

    .line 847
    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->POPUP_YPOS_REVISION:I

    .line 849
    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->SWIPE_MAX_LIMITE:I

    .line 850
    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->SWIPE_STANDARD_VALUE:I

    .line 851
    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->SWIPE_MIN_LIMITE:I

    .line 853
    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QYPGJ_PREVIEW_PADDING_BOTTOM:I

    .line 855
    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLanguageSpaceGap:I

    .line 856
    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceArrowVerticalCorrection:F

    .line 858
    const v1, 0x7f02021e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    .line 859
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 860
    const v1, 0x7f02021f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT_PRESS:Landroid/graphics/drawable/Drawable;

    .line 861
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT_PRESS:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT_PRESS:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT_PRESS:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 862
    const v1, 0x7f020220

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    .line 863
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 864
    const v1, 0x7f020221

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT_PRESS:Landroid/graphics/drawable/Drawable;

    .line 865
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT_PRESS:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT_PRESS:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT_PRESS:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 867
    const v1, 0x7f020014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    .line 868
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 869
    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    .line 870
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 871
    return-void
.end method

.method private isCurrentEnterActionIcon()Z
    .locals 3

    .prologue
    .line 1478
    const/4 v0, 0x0

    .line 1482
    .local v0, isIcon:Z
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEditorAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1495
    const/4 v0, 0x1

    .line 1496
    const-string v1, "AxT9IME"

    const-string v2, "This Action is set with \'IME_FLAG_NO_ENTER_ACTION\'"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :goto_0
    return v0

    .line 1487
    :pswitch_0
    const/4 v0, 0x0

    .line 1488
    goto :goto_0

    .line 1492
    :pswitch_1
    const/4 v0, 0x1

    .line 1493
    goto :goto_0

    .line 1482
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isExpandedKeyCode(I)Z
    .locals 1
    .parameter "code"

    .prologue
    .line 4080
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNonAlphabetLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x7b

    if-lt p1, v0, :cond_0

    const/16 v0, 0x80

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLandscapeQwertySoftkeys(I)Z
    .locals 4
    .parameter "Codes"

    .prologue
    .line 5386
    const/4 v0, 0x0

    .line 5388
    .local v0, ret:Z
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-nez v2, :cond_0

    move v1, v0

    .line 5443
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_0
    return v1

    .line 5391
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 5439
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 5443
    .restart local v1       #ret:I
    goto :goto_0

    .line 5429
    .end local v1           #ret:I
    :sswitch_0
    const/4 v0, 0x1

    .line 5430
    goto :goto_1

    .line 5432
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 5433
    const/4 v0, 0x1

    goto :goto_1

    .line 5435
    :cond_1
    const/4 v0, 0x0

    .line 5437
    goto :goto_1

    .line 5391
    :sswitch_data_0
    .sparse-switch
        -0x136 -> :sswitch_0
        -0x134 -> :sswitch_0
        -0x133 -> :sswitch_0
        -0x132 -> :sswitch_0
        -0x131 -> :sswitch_0
        -0x12f -> :sswitch_0
        -0xd3 -> :sswitch_0
        -0x7c -> :sswitch_0
        -0x76 -> :sswitch_0
        -0x72 -> :sswitch_0
        -0x71 -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x68 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0x2d -> :sswitch_1
    .end sparse-switch
.end method

.method private isLocaleKorean()Z
    .locals 2

    .prologue
    .line 7408
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isNeedChangeKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 5
    .parameter "key"

    .prologue
    const/high16 v3, 0x7f0b

    const/4 v4, 0x0

    .line 5517
    const/4 v0, 0x0

    .line 5518
    .local v0, isNeed:Z
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    sparse-switch v1, :sswitch_data_0

    .line 5552
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isSymbolMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5555
    const/4 v0, 0x1

    .line 5587
    :goto_0
    return v0

    .line 5542
    :sswitch_0
    const/4 v0, 0x1

    .line 5543
    goto :goto_0

    .line 5548
    :sswitch_1
    const/4 v0, 0x0

    .line 5550
    goto :goto_0

    .line 5556
    :cond_0
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->compareIntArray([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5558
    const/4 v0, 0x1

    goto :goto_0

    .line 5559
    :cond_1
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->compareIntArray([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5562
    const/4 v0, 0x1

    goto :goto_0

    .line 5563
    :cond_2
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->compareIntArray([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5566
    const/4 v0, 0x1

    goto :goto_0

    .line 5567
    :cond_3
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x40

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 5571
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 5572
    :cond_4
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 5576
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 5577
    :cond_5
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v4

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLandscapeQwertySoftkeys(I)Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v1, :cond_6

    .line 5581
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 5584
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 5518
    :sswitch_data_0
    .sparse-switch
        -0x98 -> :sswitch_0
        -0x97 -> :sswitch_0
        -0x96 -> :sswitch_0
        -0x95 -> :sswitch_0
        -0x94 -> :sswitch_0
        -0x93 -> :sswitch_0
        -0x92 -> :sswitch_0
        -0x91 -> :sswitch_0
        -0x90 -> :sswitch_0
        -0x8f -> :sswitch_0
        -0x8e -> :sswitch_0
        -0x8d -> :sswitch_0
        -0x72 -> :sswitch_0
        -0x71 -> :sswitch_0
        -0x6e -> :sswitch_1
        -0x6a -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x68 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x5 -> :sswitch_0
        -0x1 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private isNeededPopupKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 6
    .parameter "popupKey"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4056
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mUmlautMgr:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->getKeyUmlautString(SI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v4

    .line 4073
    :goto_0
    return v0

    .line 4059
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isExpandedKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v4

    .line 4065
    goto :goto_0

    .line 4066
    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isExpandedKeyCode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->hasNumberPopup(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v4

    .line 4071
    goto :goto_0

    :cond_5
    move v0, v3

    .line 4073
    goto :goto_0
.end method

.method private isPortraitSoftkeys(I)Z
    .locals 4
    .parameter "Codes"

    .prologue
    const/4 v3, 0x1

    .line 5306
    const/4 v0, 0x0

    .line 5308
    .local v0, ret:Z
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-ne v2, v3, :cond_0

    move v1, v0

    .line 5382
    .end local v0           #ret:Z
    .local v1, ret:I
    :goto_0
    return v1

    .line 5312
    .end local v1           #ret:I
    .restart local v0       #ret:Z
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 5379
    const/4 v0, 0x0

    :goto_1
    move v1, v0

    .line 5382
    .restart local v1       #ret:I
    goto :goto_0

    .line 5346
    .end local v1           #ret:I
    :sswitch_0
    const/4 v0, 0x1

    .line 5347
    goto :goto_1

    .line 5356
    :sswitch_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    if-nez v2, :cond_1

    .line 5357
    const/4 v0, 0x0

    goto :goto_1

    .line 5359
    :cond_1
    const/4 v0, 0x1

    .line 5361
    goto :goto_1

    .line 5364
    :sswitch_2
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 5366
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 5368
    :cond_3
    const/4 v0, 0x0

    .line 5370
    goto :goto_1

    .line 5372
    :sswitch_3
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 5373
    const/4 v0, 0x1

    goto :goto_1

    .line 5375
    :cond_4
    const/4 v0, 0x0

    .line 5377
    goto :goto_1

    .line 5312
    :sswitch_data_0
    .sparse-switch
        -0x136 -> :sswitch_0
        -0x134 -> :sswitch_0
        -0x133 -> :sswitch_0
        -0x132 -> :sswitch_0
        -0x131 -> :sswitch_0
        -0x12f -> :sswitch_0
        -0xd3 -> :sswitch_0
        -0x7c -> :sswitch_0
        -0x72 -> :sswitch_1
        -0x71 -> :sswitch_0
        -0x69 -> :sswitch_0
        -0x68 -> :sswitch_0
        -0x67 -> :sswitch_0
        -0x66 -> :sswitch_0
        -0x64 -> :sswitch_0
        -0x5 -> :sswitch_0
        0xa -> :sswitch_0
        0x20 -> :sswitch_2
        0x2d -> :sswitch_3
    .end sparse-switch
.end method

.method private isShouldShowEmoticon()Z
    .locals 2

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openPopupIfRequired(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "me"

    .prologue
    const/4 v5, 0x0

    .line 3940
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupLayout:I

    if-nez v3, :cond_0

    move v3, v5

    .line 3958
    :goto_0
    return v3

    .line 3943
    :cond_0
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    if-ltz v3, :cond_1

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_2

    :cond_1
    move v3, v5

    .line 3944
    goto :goto_0

    .line 3947
    :cond_2
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 3949
    .local v0, keyIndex:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v3}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    .line 3951
    .local v1, popupKey:Landroid/inputmethodservice/Keyboard$Key;
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v2

    .line 3952
    .local v2, result:Z
    if-eqz v2, :cond_3

    .line 3953
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    .line 3954
    iget-boolean v3, v1, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-nez v3, :cond_3

    .line 3955
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showPreview(I)V

    :cond_3
    move v3, v2

    .line 3958
    goto :goto_0
.end method

.method private popupLongPressKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 14
    .parameter

    .prologue
    .line 4109
    .line 4110
    const/4 v0, 0x0

    .line 4111
    const/4 v1, 0x0

    .line 4112
    const/4 v2, 0x0

    .line 4113
    const/4 v3, 0x0

    .line 4114
    const/4 v4, 0x0

    .line 4115
    const/4 v5, 0x1

    .line 4116
    const/4 v6, 0x0

    .line 4118
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShown()Z

    move-result v7

    if-nez v7, :cond_0

    .line 4119
    const/4 v0, 0x0

    .line 4470
    :goto_0
    return v0

    .line 4122
    :cond_0
    iget v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    .line 4124
    iget v7, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-nez v7, :cond_7

    .line 4126
    const v7, 0x7f05002f

    .line 4127
    iget-object v8, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Character;->isLetter(I)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-direct {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isExpandedKeyCode(I)Z

    move-result v8

    if-eqz v8, :cond_41

    :cond_1
    iget-object v8, p1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-nez v8, :cond_41

    .line 4129
    const/4 v6, 0x1

    move v8, v6

    move v9, v3

    move v10, v1

    move v11, v0

    move v3, v2

    move v1, v4

    move v2, v7

    .line 4152
    :goto_1
    if-eqz v2, :cond_3c

    .line 4153
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 4154
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v0, v0, v4

    const/16 v4, 0x69

    if-eq v0, v4, :cond_2

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v0, v0, v4

    const/16 v4, 0x73

    if-eq v0, v4, :cond_2

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v0, v0, v4

    const/16 v4, 0x34

    if-eq v0, v4, :cond_2

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v0, v0, v4

    const/16 v4, 0x37

    if-ne v0, v4, :cond_3a

    .line 4160
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "layout_inflater"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 4164
    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v6, 0x7f050029

    if-ne v4, v6, :cond_12

    .line 4165
    if-eqz v11, :cond_f

    .line 4166
    const v4, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    move v4, v5

    .line 4202
    :goto_2
    if-eqz v11, :cond_1a

    .line 4203
    if-eqz v10, :cond_19

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_19

    .line 4205
    const v0, 0x7f020246

    .line 4213
    :goto_3
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4214
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v5, 0x7f070011

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    .line 4216
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4217
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsMiniKeyboard(Z)V

    .line 4218
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v10}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsModeChangeMiniKeyboard(Z)V

    .line 4219
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v11}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsVerticalMiniKeyboard(Z)V

    .line 4220
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsUmlautMiniKeyboard(Z)V

    .line 4221
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsDomainAllKeyboard(Z)V

    .line 4222
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsEmoticonsKeyboard(Z)V

    .line 4223
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setIsSymbolsKeyboard(Z)V

    .line 4225
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->removeActionPopup()V

    .line 4227
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4230
    if-eqz v0, :cond_3

    .line 4231
    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4239
    :cond_3
    if-eqz v10, :cond_1b

    .line 4240
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mModeChangeKeyboardListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setOnKeyboardActionListener(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;)V

    .line 4246
    :goto_4
    if-eqz v10, :cond_4

    .line 4247
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->convertIntArrtoCharSequence([I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    .line 4250
    :cond_4
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentUmlautString(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4254
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v3, 0x8

    if-ne v1, v3, :cond_1c

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4258
    :cond_5
    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 4261
    const/4 v3, 0x0

    :goto_5
    array-length v5, v1

    if-ge v3, v5, :cond_1c

    .line 4262
    aget v5, v1, v3

    int-to-char v5, v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 4263
    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    .line 4264
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 4261
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 4131
    :cond_7
    iget v7, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v8, 0x7f050029

    if-ne v7, v8, :cond_8

    .line 4132
    const v0, 0x7f050029

    .line 4133
    const/4 v1, 0x1

    .line 4134
    const/4 v7, 0x1

    move v8, v6

    move v9, v3

    move v10, v1

    move v11, v7

    move v3, v2

    move v1, v4

    move v2, v0

    goto/16 :goto_1

    .line 4135
    :cond_8
    iget v7, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v8, 0x7f05002e

    if-ne v7, v8, :cond_9

    .line 4136
    const v3, 0x7f05002e

    .line 4137
    const/4 v7, 0x1

    move v8, v6

    move v9, v7

    move v10, v1

    move v11, v0

    move v1, v4

    move v13, v2

    move v2, v3

    move v3, v13

    goto/16 :goto_1

    .line 4138
    :cond_9
    iget v7, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v8, 0x7f050027

    if-ne v7, v8, :cond_a

    .line 4139
    const v4, 0x7f050027

    .line 4140
    const/4 v7, 0x1

    move v8, v6

    move v9, v3

    move v10, v1

    move v11, v0

    move v3, v2

    move v1, v7

    move v2, v4

    goto/16 :goto_1

    .line 4142
    :cond_a
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    const v2, 0x7f050022

    if-ne v0, v2, :cond_c

    .line 4143
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getDomainKbdId()I

    move-result v0

    .line 4147
    :goto_6
    const v2, 0x7f050023

    if-eq v0, v2, :cond_b

    const v2, 0x7f050024

    if-ne v0, v2, :cond_d

    :cond_b
    const/4 v2, 0x1

    .line 4148
    :goto_7
    const v7, 0x7f050023

    if-ne v0, v7, :cond_e

    const/4 v7, 0x1

    :goto_8
    move v8, v6

    move v9, v3

    move v10, v1

    move v11, v7

    move v3, v2

    move v1, v4

    move v2, v0

    goto/16 :goto_1

    .line 4145
    :cond_c
    iget v0, p1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto :goto_6

    .line 4147
    :cond_d
    const/4 v2, 0x0

    goto :goto_7

    .line 4148
    :cond_e
    const/4 v7, 0x0

    goto :goto_8

    .line 4168
    :cond_f
    if-nez v3, :cond_11

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v6

    if-eqz v6, :cond_10

    sget v6, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    :goto_9
    div-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_11

    .line 4169
    const v4, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    move v4, v5

    goto/16 :goto_2

    .line 4168
    :cond_10
    sget v6, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    goto :goto_9

    .line 4171
    :cond_11
    const v4, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    move v4, v5

    goto/16 :goto_2

    .line 4175
    :cond_12
    if-eqz v11, :cond_13

    .line 4176
    const v4, 0x7f030008

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    move v4, v5

    goto/16 :goto_2

    .line 4178
    :cond_13
    if-eqz v8, :cond_16

    .line 4179
    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v5

    if-eqz v5, :cond_14

    sget v5, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    :goto_a
    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_15

    .line 4180
    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 4181
    const/4 v0, 0x1

    move v4, v0

    goto/16 :goto_2

    .line 4179
    :cond_14
    sget v5, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    goto :goto_a

    .line 4183
    :cond_15
    const v4, 0x7f030007

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 4184
    const/4 v0, 0x1

    move v4, v0

    goto/16 :goto_2

    .line 4190
    :cond_16
    if-nez v3, :cond_18

    iget v4, p1, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v6

    if-eqz v6, :cond_17

    sget v6, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    :goto_b
    div-int/lit8 v6, v6, 0x2

    if-ge v4, v6, :cond_18

    .line 4191
    const v4, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    move v4, v5

    goto/16 :goto_2

    .line 4190
    :cond_17
    sget v6, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    goto :goto_b

    .line 4193
    :cond_18
    const v4, 0x7f030007

    const/4 v6, 0x0

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    move v4, v5

    goto/16 :goto_2

    .line 4207
    :cond_19
    const v0, 0x7f020245

    goto/16 :goto_3

    .line 4210
    :cond_1a
    const v0, 0x7f020004

    goto/16 :goto_3

    .line 4242
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setOnKeyboardActionListener(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;)V

    goto/16 :goto_4

    .line 4269
    :cond_1c
    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_29

    .line 4282
    if-eqz v10, :cond_20

    .line 4283
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v4

    .line 4284
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v5, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->convertIntArrToStringArr([I)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v12

    add-int/2addr v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;[I[Ljava/lang/String;II)V

    .line 4431
    :goto_c
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setKeyboard(Landroid/inputmethodservice/Keyboard;)V

    .line 4432
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setPopupParent(Landroid/view/View;)V

    .line 4433
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v1

    const/high16 v2, -0x8000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v2

    sget v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 4437
    if-nez v10, :cond_1d

    if-nez v8, :cond_1d

    if-nez v9, :cond_1d

    .line 4438
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4444
    :cond_1d
    :goto_d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mWindowOffset:[I

    if-nez v0, :cond_1e

    .line 4445
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mWindowOffset:[I

    .line 4446
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mWindowOffset:[I

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getLocationInWindow([I)V

    .line 4449
    :cond_1e
    invoke-direct {p0, p1, v11, v10}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPopupKeyboardPosX(Landroid/inputmethodservice/Keyboard$Key;ZZ)I

    move-result v0

    .line 4450
    invoke-direct {p0, p1, v11, v10}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPopupKeyboardPosY(Landroid/inputmethodservice/Keyboard$Key;ZZ)I

    move-result v1

    .line 4451
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupX:I

    .line 4452
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupY:I

    .line 4453
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    if-gez v0, :cond_3b

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v2, v3, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setPopupOffset(II)V

    .line 4454
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShifted()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setShifted(Z)Z

    .line 4455
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 4456
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 4457
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 4463
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 4464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 4465
    if-eqz v8, :cond_1f

    :cond_1f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mUmlautMiniKeyboardOnScreen:Z

    .line 4466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSendFirstEvent:Z

    .line 4467
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateAll()V

    .line 4468
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 4286
    :cond_20
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_24

    if-eqz v8, :cond_24

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v1

    if-nez v1, :cond_24

    .line 4291
    if-eqz v4, :cond_22

    .line 4292
    const/4 v1, 0x0

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->changeCodeToUpperCase(I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4293
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_21

    .line 4294
    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    .line 4306
    :goto_f
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto/16 :goto_c

    .line 4295
    :cond_21
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_40

    .line 4296
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    goto :goto_f

    .line 4299
    :cond_22
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->changeCodeToUpperCase(I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4300
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_23

    .line 4301
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    goto :goto_f

    .line 4302
    :cond_23
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_40

    .line 4303
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    goto :goto_f

    .line 4308
    :cond_24
    if-eqz v8, :cond_28

    .line 4309
    if-eqz v4, :cond_26

    .line 4310
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_25

    .line 4311
    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    .line 4322
    :goto_10
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto/16 :goto_c

    .line 4312
    :cond_25
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3f

    .line 4313
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    goto :goto_10

    .line 4316
    :cond_26
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_27

    .line 4317
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    goto :goto_10

    .line 4318
    :cond_27
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3f

    .line 4319
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    goto :goto_10

    .line 4325
    :cond_28
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto/16 :goto_c

    .line 4328
    :cond_29
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_2f

    if-eqz v8, :cond_2f

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 4345
    if-eqz v4, :cond_2c

    .line 4346
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNonAlphabetLanguage()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2a

    .line 4347
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 4348
    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4352
    :goto_11
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_2b

    .line 4353
    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    .line 4371
    :goto_12
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto/16 :goto_c

    .line 4350
    :cond_2a
    const/4 v1, 0x0

    iget-object v3, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->changeCodeToUpperCase(I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_11

    .line 4354
    :cond_2b
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3e

    .line 4355
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    goto :goto_12

    .line 4358
    :cond_2c
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNonAlphabetLanguage()Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2d

    .line 4359
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 4360
    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 4364
    :goto_13
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_2e

    .line 4365
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    goto :goto_12

    .line 4362
    :cond_2d
    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->changeCodeToUpperCase(I)I

    move-result v1

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    goto :goto_13

    .line 4366
    :cond_2e
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3e

    .line 4367
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    goto :goto_12

    .line 4373
    :cond_2f
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_33

    if-eqz v8, :cond_33

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->hasNumberPopup(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 4377
    if-eqz v4, :cond_31

    .line 4379
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_30

    .line 4380
    const/4 v1, 0x0

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    .line 4393
    :goto_14
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, -0x1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;II)V

    goto/16 :goto_c

    .line 4381
    :cond_30
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3d

    .line 4382
    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/lang/StringBuilder;->insert(II)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    goto :goto_14

    .line 4386
    :cond_31
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ge v1, v3, :cond_32

    .line 4387
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    goto :goto_14

    .line 4388
    :cond_32
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3d

    .line 4389
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object v3, v0

    goto :goto_14

    .line 4397
    :cond_33
    if-eqz v9, :cond_39

    .line 4398
    const-string v0, ""

    .line 4399
    const/16 v5, 0xe

    .line 4400
    const/4 v1, 0x0

    move-object v3, v0

    move v0, v1

    :goto_15
    if-ge v0, v5, :cond_34

    .line 4401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4400
    add-int/lit8 v0, v0, 0x1

    move-object v3, v1

    goto :goto_15

    .line 4406
    :cond_34
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 4407
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0005

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 4408
    const-string v6, "."

    .line 4409
    new-array v4, v5, [Ljava/lang/String;

    .line 4410
    const/4 v7, 0x0

    :goto_16
    if-ge v7, v1, :cond_35

    .line 4411
    aget-char v12, v0, v7

    invoke-static {v12}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v4, v7

    .line 4410
    add-int/lit8 v7, v7, 0x1

    goto :goto_16

    .line 4413
    :cond_35
    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    .line 4415
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4416
    const/4 v6, 0x0

    :goto_17
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_36

    .line 4417
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4416
    add-int/lit8 v6, v6, 0x1

    goto :goto_17

    .line 4419
    :cond_36
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    div-int/lit8 v6, v5, 0x2

    if-ge v0, v6, :cond_37

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v6, v0

    .line 4420
    :goto_18
    div-int/lit8 v0, v5, 0x2

    move v7, v0

    :goto_19
    div-int/lit8 v0, v5, 0x2

    add-int/2addr v0, v6

    if-ge v7, v0, :cond_38

    .line 4421
    div-int/lit8 v0, v5, 0x2

    sub-int v0, v7, v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v7

    .line 4420
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_19

    .line 4419
    :cond_37
    div-int/lit8 v0, v5, 0x2

    move v6, v0

    goto :goto_18

    .line 4424
    :cond_38
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->saveSymbolHistoryToPreference()V

    .line 4425
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    div-int/lit8 v6, v5, 0x2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v7

    add-int/2addr v7, v5

    move-object v5, v4

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;ILjava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/String;II)V

    goto/16 :goto_c

    .line 4429
    :cond_39
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_c

    .line 4441
    :cond_3a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    goto/16 :goto_d

    :cond_3b
    move v3, v0

    .line 4453
    goto/16 :goto_e

    .line 4470
    :cond_3c
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_3d
    move-object v3, v0

    goto/16 :goto_14

    :cond_3e
    move-object v3, v0

    goto/16 :goto_12

    :cond_3f
    move-object v3, v0

    goto/16 :goto_10

    :cond_40
    move-object v3, v0

    goto/16 :goto_f

    :cond_41
    move v8, v6

    move v9, v3

    move v10, v1

    move v11, v0

    move v3, v2

    move v1, v4

    move v2, v7

    goto/16 :goto_1

    .line 4258
    nop

    :array_0
    .array-data 0x4
        0x90t 0x3t 0x0t 0x0t
        0xb0t 0x3t 0x0t 0x0t
    .end array-data
.end method

.method private saveSymbolsToHistory(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 3443
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 3448
    :goto_0
    return-void

    .line 3446
    :cond_0
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3447
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setFlagDrawPending(Z)V
    .locals 0
    .parameter "drawPending"

    .prologue
    .line 5450
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDrawPending:Z

    .line 5451
    return-void
.end method


# virtual methods
.method public IsOneTimeShift()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsOneTimeShift:Z

    return v0
.end method

.method checkMultiTap(JI)V
    .locals 6
    .parameter "eventTime"
    .parameter "keyIndex"

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, -0x1

    const/4 v2, 0x1

    .line 5179
    if-ne p3, v3, :cond_1

    .line 5198
    :cond_0
    :goto_0
    return-void

    .line 5182
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 5183
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTaping:Z

    .line 5185
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v1, v1

    if-le v1, v2, :cond_3

    .line 5186
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInMultiTap:Z

    .line 5187
    iget-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gez v1, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastSentIndex:I

    if-ne p3, v1, :cond_2

    .line 5188
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v2, v2

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    goto :goto_0

    .line 5191
    :cond_2
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    goto :goto_0

    .line 5195
    :cond_3
    iget-wide v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    add-long/2addr v1, v4

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastSentIndex:I

    if-eq p3, v1, :cond_0

    .line 5196
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->resetMultiTap()V

    goto :goto_0
.end method

.method public clearOffsetInWindow()V
    .locals 1

    .prologue
    .line 8271
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    .line 8272
    return-void
.end method

.method public closing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5134
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5135
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5138
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->removeActionPopup()V

    .line 5140
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dismissPopupKeyboard()V

    .line 5141
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->removeAllMsg()V

    .line 5142
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 5143
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 5144
    return-void
.end method

.method detectAndSendKey(IIIJ)V
    .locals 8
    .parameter "index"
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 3345
    if-eq p1, v7, :cond_0

    .line 3346
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 3347
    .local v3, size:I
    if-lt p1, v3, :cond_1

    .line 3427
    .end local v3           #size:I
    :cond_0
    :goto_0
    return-void

    .line 3353
    .restart local v3       #size:I
    :cond_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Key;

    .line 3355
    .local v2, key:Landroid/inputmethodservice/Keyboard$Key;
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 3356
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastSentIndex:I

    .line 3357
    iput-wide p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    goto :goto_0

    .line 3361
    :cond_2
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRecognizing()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3363
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastSentIndex:I

    .line 3364
    iput-wide p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    goto :goto_0

    .line 3368
    :cond_3
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_5

    .line 3371
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v4, v4, v6

    const/16 v5, -0x6f

    if-ne v4, v5, :cond_4

    .line 3372
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->saveSymbolsToHistory(Ljava/lang/String;)V

    .line 3376
    :cond_4
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    iget-object v5, v2, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    invoke-interface {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    .line 3377
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v4, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    .line 3424
    :goto_1
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastSentIndex:I

    .line 3425
    iput-wide p4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    goto :goto_0

    .line 3380
    :cond_5
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v4, v6

    .line 3382
    .local v0, code:I
    iget-object v1, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    .line 3386
    .local v1, codes:[I
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInMultiTap:Z

    if-eqz v4, :cond_8

    .line 3387
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    if-eq v4, v7, :cond_c

    .line 3394
    :goto_2
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    iget-object v5, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    array-length v5, v5

    if-ge v4, v5, :cond_6

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    if-gez v4, :cond_7

    .line 3395
    :cond_6
    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    .line 3397
    :cond_7
    iget-object v4, v2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    aget v0, v4, v5

    .line 3400
    :cond_8
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v4, :cond_9

    .line 3401
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setMiniKeyboardInput(Z)V

    .line 3405
    :cond_9
    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_a

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v4

    if-nez v4, :cond_a

    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_a

    int-to-char v4, v0

    const/16 v5, 0x20

    if-eq v4, v5, :cond_a

    int-to-char v4, v0

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_a

    int-to-char v4, v0

    const/16 v5, 0xa

    if-eq v4, v5, :cond_a

    if-eq v0, v7, :cond_a

    const/4 v4, -0x5

    if-eq v0, v4, :cond_a

    .line 3412
    int-to-char v4, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->saveSymbolsToHistory(Ljava/lang/String;)V

    .line 3416
    :cond_a
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v4, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 3418
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v4, :cond_b

    .line 3419
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setMiniKeyboardInput(Z)V

    .line 3422
    :cond_b
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onRelease(I)V

    goto :goto_1

    .line 3390
    :cond_c
    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    .line 3391
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    goto :goto_2
.end method

.method dismissPopupKeyboard()V
    .locals 1

    .prologue
    .line 5153
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5154
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    .line 5156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDismissMiniKeyboard:Z

    .line 5157
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateAll()V

    .line 5160
    :cond_0
    return-void
.end method

.method public dismissPreview()V
    .locals 1

    .prologue
    .line 8040
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8041
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 8043
    :cond_0
    return-void
.end method

.method protected freeVariables()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 874
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 876
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 878
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 880
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPhonepadKeyNumberSequence:[Ljava/lang/String;

    .line 881
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPhoneNumberSequence:[Ljava/lang/String;

    .line 882
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLandQwertyKeyNumberSequence:[Ljava/lang/String;

    .line 884
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 886
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    .line 887
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    .line 888
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    .line 890
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    .line 892
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 894
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    .line 896
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 899
    :cond_0
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    .line 900
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardContainer:Landroid/view/View;

    .line 901
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboard:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;

    .line 903
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupParent:Landroid/view/View;

    .line 905
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardCache:Ljava/util/Map;

    .line 906
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mWindowOffset:[I

    .line 908
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    .line 910
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    .line 911
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    .line 913
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 914
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPadding:Landroid/graphics/Rect;

    .line 916
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 918
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 919
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 920
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    .line 922
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 923
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    .line 925
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewLabel:Ljava/lang/StringBuilder;

    .line 927
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    .line 928
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionButton:Landroid/widget/Button;

    .line 930
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_KEYPAD_N_QWERTY:Landroid/graphics/drawable/Drawable;

    .line 931
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_LAND_QWERTY:Landroid/graphics/drawable/Drawable;

    .line 932
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_FULL:Landroid/graphics/drawable/Drawable;

    .line 933
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_BOX_DIVIDE:Landroid/graphics/drawable/Drawable;

    .line 934
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->BG_HANDWRITING_BOX_NORMAL:Landroid/graphics/drawable/Drawable;

    .line 936
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_NORMAL:Landroid/graphics/drawable/Drawable;

    .line 937
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_MORE:Landroid/graphics/drawable/Drawable;

    .line 939
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->EMPTY_KEY_LABEL:Ljava/lang/String;

    .line 940
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PAGE_KEY_LABEL:Ljava/lang/String;

    .line 941
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MODE_CHANGE_KEYLABEL:Ljava/lang/String;

    .line 943
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    .line 944
    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopupListener:Landroid/view/View$OnTouchListener;

    .line 945
    return-void
.end method

.method public getCurrentDotCoDotLocaleKeyIndex()I
    .locals 6

    .prologue
    .line 8000
    const/4 v1, 0x0

    .line 8002
    .local v1, index:I
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentDotCoDotLocaleIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 8003
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentDotCoDotLocaleIndex:I

    .line 8016
    :cond_0
    :goto_0
    return v1

    .line 8005
    :cond_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 8006
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 8007
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, -0xc8

    if-ne v4, v5, :cond_2

    .line 8008
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentDotCoDotLocaleIndex:I

    .line 8009
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentDotCoDotLocaleIndex:I

    .line 8010
    goto :goto_0

    .line 8006
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getCurrentSpaceKeyIndex()I
    .locals 6

    .prologue
    .line 8020
    const/4 v1, -0x1

    .line 8022
    .local v1, index:I
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 8023
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    .line 8036
    :cond_0
    :goto_0
    return v1

    .line 8025
    :cond_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 8026
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 8027
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    .line 8028
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    .line 8029
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    .line 8030
    goto :goto_0

    .line 8026
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method getCurrentUmlautString(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/StringBuilder;
    .locals 9
    .parameter "popupKey"

    .prologue
    const/4 v8, 0x0

    .line 4475
    iget-object v5, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v5, :cond_1

    .line 4476
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4481
    .local v3, sUmlautString:Ljava/lang/StringBuilder;
    :goto_0
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mUmlautMgr:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v6, v6, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    iget-object v7, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v7, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->getKeyUmlautString(SI)Ljava/lang/String;

    move-result-object v4

    .line 4482
    .local v4, usedUmlaut:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 4483
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int v0, v5, v6

    .local v0, i:I
    const/4 v2, 0x0

    .local v2, n:I
    :goto_1
    if-lt v0, v2, :cond_2

    .line 4484
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 4485
    .local v1, index:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    .line 4486
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 4488
    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v3, v8, v5}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 4483
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 4478
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v2           #n:I
    .end local v3           #sUmlautString:Ljava/lang/StringBuilder;
    .end local v4           #usedUmlaut:Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v3       #sUmlautString:Ljava/lang/StringBuilder;
    goto :goto_0

    .line 4492
    .restart local v4       #usedUmlaut:Ljava/lang/String;
    :cond_2
    return-object v3
.end method

.method public getCurrentWwwdotKeyIndex()I
    .locals 6

    .prologue
    .line 7980
    const/4 v1, 0x0

    .line 7982
    .local v1, index:I
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentWwwDotIndex:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 7983
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentWwwDotIndex:I

    .line 7996
    :cond_0
    :goto_0
    return v1

    .line 7985
    :cond_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v4}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v2

    .line 7986
    .local v2, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, n:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 7987
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v4, v4, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, -0xc9

    if-ne v4, v5, :cond_2

    .line 7988
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentWwwDotIndex:I

    .line 7989
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentWwwDotIndex:I

    .line 7990
    goto :goto_0

    .line 7986
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getKeyBackGround(I)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f020240

    const v4, 0x7f02023b

    const v3, 0x7f020027

    const/4 v2, 0x1

    const/4 v1, 0x2

    .line 5212
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v0, :cond_1

    .line 5213
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsModeChangeMiniKeyboard:Z

    if-eqz v0, :cond_0

    .line 5214
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5302
    :goto_0
    return-object v0

    .line 5216
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5227
    :cond_1
    const/16 v0, -0x100

    if-ne p1, v0, :cond_2

    .line 5228
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5229
    :cond_2
    const/16 v0, -0x68

    if-ne p1, v0, :cond_4

    .line 5230
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 5231
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5233
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5235
    :cond_4
    const/16 v0, -0x69

    if-ne p1, v0, :cond_6

    .line 5236
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 5237
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 5239
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02023d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5241
    :cond_6
    const/4 v0, -0x1

    if-ne p1, v0, :cond_b

    .line 5242
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5243
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_7

    .line 5244
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5246
    :cond_7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_8

    .line 5247
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 5249
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5253
    :cond_9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_a

    .line 5254
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 5256
    :cond_a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 5259
    :cond_b
    const/4 v0, -0x5

    if-ne p1, v0, :cond_d

    .line 5267
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 5268
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 5270
    :cond_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 5273
    :cond_d
    const/16 v0, 0xa

    if-ne p1, v0, :cond_f

    .line 5281
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_e

    .line 5282
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 5284
    :cond_e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 5287
    :cond_f
    const/16 v0, -0x130

    if-ne p1, v0, :cond_11

    .line 5288
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    if-eqz v0, :cond_10

    .line 5289
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto/16 :goto_0

    .line 5291
    :cond_10
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 5293
    :cond_11
    const/16 v0, -0x12f

    if-ne p1, v0, :cond_12

    .line 5294
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 5295
    :cond_12
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v0

    if-ne v0, v2, :cond_13

    .line 5296
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 5297
    :cond_13
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLandscapeQwertySoftkeys(I)Z

    move-result v0

    if-ne v0, v2, :cond_14

    .line 5298
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpecialKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    .line 5300
    :cond_14
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyBackground:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0
.end method

.method getKeyIndices(II[I)I
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "allKeys"

    .prologue
    .line 3285
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v6}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    .line 3287
    .local v4, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v5, -0x1

    .line 3291
    .local v5, primaryIndex:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 3292
    .local v3, keyCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 3293
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/inputmethodservice/Keyboard$Key;

    .line 3296
    .local v2, key:Landroid/inputmethodservice/Keyboard$Key;
    const/4 v1, 0x0

    .line 3297
    .local v1, isInside:Z
    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v7, v2, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v6, v7

    if-ge p1, v6, :cond_0

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->x:I

    if-lt p1, v6, :cond_0

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v7, v2, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v6, v7

    if-ge p2, v6, :cond_0

    iget v6, v2, Landroid/inputmethodservice/Keyboard$Key;->y:I

    if-lt p2, v6, :cond_0

    .line 3298
    const/4 v1, 0x1

    .line 3331
    :cond_0
    if-eqz v1, :cond_2

    .line 3332
    move v5, v0

    .line 3341
    .end local v1           #isInside:Z
    .end local v2           #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    return v5

    .line 3292
    .restart local v1       #isInside:Z
    .restart local v2       #key:Landroid/inputmethodservice/Keyboard$Key;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getKeyboard()Landroid/inputmethodservice/Keyboard;
    .locals 1

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    return-object v0
.end method

.method protected getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    return-object v0
.end method

.method getTheNearestKeyIndex(II[I)I
    .locals 14
    .parameter "TouchX"
    .parameter "TouchY"
    .parameter "nearKeys"

    .prologue
    .line 4683
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v11

    .line 4684
    .local v11, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    const/4 v13, -0x1

    .line 4685
    .local v13, theNearestKeyIndex:I
    const v12, 0x7fffffff

    .line 4686
    .local v12, minDistance:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move v1, v0

    if-ge v10, v1, :cond_1

    .line 4687
    const/4 v8, 0x0

    .line 4688
    .local v8, currentDistance:I
    aget v1, p3, v10

    invoke-interface {v11, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/inputmethodservice/Keyboard$Key;

    .line 4689
    .local v9, currentKey:Landroid/inputmethodservice/Keyboard$Key;
    iget v2, v9, Landroid/inputmethodservice/Keyboard$Key;->x:I

    .line 4690
    .local v2, keyX:I
    iget v3, v9, Landroid/inputmethodservice/Keyboard$Key;->y:I

    .line 4692
    .local v3, keyY:I
    iget v1, v9, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int v4, v2, v1

    iget v1, v9, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int v5, v3, v1

    move-object v1, p0

    move v6, p1

    move/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getDistanceSquare(IIIIII)I

    move-result v8

    .line 4694
    if-ge v8, v12, :cond_0

    .line 4695
    move v12, v8

    .line 4696
    aget v13, p3, v10

    .line 4686
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 4699
    .end local v2           #keyX:I
    .end local v3           #keyY:I
    .end local v8           #currentDistance:I
    .end local v9           #currentKey:Landroid/inputmethodservice/Keyboard$Key;
    :cond_1
    return v13
.end method

.method public handleBack()Z
    .locals 1

    .prologue
    .line 5163
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupKeyboard:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5164
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dismissPopupKeyboard()V

    .line 5165
    const/4 v0, 0x1

    .line 5167
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected handleChangeLanguage(I)V
    .locals 6
    .parameter "diff"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, -0xa1

    const/16 v2, -0xa2

    .line 3818
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 3819
    if-lez p1, :cond_1

    .line 3820
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    new-array v1, v5, [I

    aput v3, v1, v4

    invoke-virtual {v0, v3, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 3825
    :cond_0
    :goto_0
    return-void

    .line 3822
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    new-array v1, v5, [I

    aput v2, v1, v4

    invoke-virtual {v0, v2, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_0
.end method

.method public initActionPopup()V
    .locals 4

    .prologue
    const/4 v1, -0x2

    .line 7569
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    if-nez v0, :cond_0

    .line 7570
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-direct {v0, p0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    .line 7571
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 7572
    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 7573
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 7574
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7575
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 7576
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopupListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 7577
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionButton:Landroid/widget/Button;

    if-nez v1, :cond_0

    .line 7578
    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionButton:Landroid/widget/Button;

    .line 7581
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->updateActionPopup()V

    .line 7582
    return-void
.end method

.method public initSymbolHistory()V
    .locals 7

    .prologue
    .line 3432
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 3433
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3434
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v5, "usersymbollist"

    const-string v6, ":-) ;-) :-( :\'( :-o :-P :-X"

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3435
    .local v4, temp:Ljava/lang/String;
    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 3436
    .local v3, splitTemp:[Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    sput-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    .line 3437
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 3438
    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    aget-object v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3437
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3440
    :cond_0
    return-void
.end method

.method public invalidateAll()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3919
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->union(IIII)V

    .line 3920
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setFlagDrawPending(Z)V

    .line 3921
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidate()V

    .line 3922
    return-void
.end method

.method public invalidateKey(I)V
    .locals 7
    .parameter "keyIndex"

    .prologue
    .line 3925
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 3936
    :cond_0
    :goto_0
    return-void

    .line 3928
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 3929
    .local v0, key:Landroid/inputmethodservice/Keyboard$Key;
    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 3930
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v6, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->union(IIII)V

    .line 3932
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onBufferDraw()V

    .line 3934
    iget v1, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public isInMultiTap()Z
    .locals 1

    .prologue
    .line 7400
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInMultiTap:Z

    return v0
.end method

.method public isKeyLongPressed()Z
    .locals 1

    .prologue
    .line 5201
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyLongPressed:Z

    return v0
.end method

.method public isPreviewEnabled()Z
    .locals 1

    .prologue
    .line 1171
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShowPreview:Z

    return v0
.end method

.method public isShiftPressed()Z
    .locals 1

    .prologue
    .line 540
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsShiftedPressed:Z

    return v0
.end method

.method public isShifted()Z
    .locals 1

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->isShifted()Z

    move-result v0

    .line 1152
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTapingBeforeTimeout()Z
    .locals 1

    .prologue
    .line 7404
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTaping:Z

    return v0
.end method

.method protected isThisKeyEnable(I)Z
    .locals 9
    .parameter

    .prologue
    const/16 v8, -0x6f

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3094
    .line 3095
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 3096
    and-int/lit8 v1, v0, 0xf

    .line 3097
    and-int/lit16 v2, v0, 0xff0

    .line 3098
    const v3, 0xfff000

    and-int/2addr v0, v3

    .line 3100
    const/16 v3, -0xff

    if-eq p1, v3, :cond_0

    const/16 v3, -0x100

    if-ne p1, v3, :cond_1

    :cond_0
    move v0, v4

    .line 3221
    :goto_0
    return v0

    .line 3104
    :cond_1
    if-ltz p1, :cond_2

    const/16 v3, 0x20

    if-eq p1, v3, :cond_2

    const/16 v3, 0xa

    if-ne p1, v3, :cond_13

    :cond_2
    if-eq p1, v8, :cond_13

    .line 3108
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-ne v0, v6, :cond_4

    const/16 v0, -0x64

    if-eq p1, v0, :cond_3

    const/16 v0, -0xd3

    if-ne p1, v0, :cond_4

    :cond_3
    move v0, v4

    .line 3111
    goto :goto_0

    .line 3112
    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-ne v0, v6, :cond_5

    const/16 v0, -0x67

    if-ne p1, v0, :cond_5

    move v0, v4

    .line 3115
    goto :goto_0

    .line 3116
    :cond_5
    const/16 v0, -0x67

    if-ne p1, v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-ne v0, v5, :cond_7

    :cond_6
    move v0, v4

    .line 3120
    goto :goto_0

    .line 3121
    :cond_7
    const/16 v0, -0x66

    if-ne p1, v0, :cond_9

    .line 3122
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v0

    array-length v0, v0

    if-gt v0, v5, :cond_8

    move v0, v4

    .line 3123
    goto :goto_0

    :cond_8
    move v0, v5

    .line 3125
    goto :goto_0

    .line 3127
    :cond_9
    const/16 v0, -0xc8

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    if-eqz v0, :cond_a

    move v0, v4

    .line 3128
    goto :goto_0

    .line 3129
    :cond_a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_12

    .line 3130
    const/16 v0, -0x12c

    if-gt p1, v0, :cond_d

    const/16 v0, -0x12d

    if-lt p1, v0, :cond_d

    .line 3132
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-eqz v0, :cond_b

    move v0, v4

    .line 3133
    goto/16 :goto_0

    .line 3135
    :cond_b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    if-eqz v0, :cond_c

    move v0, v5

    .line 3136
    goto/16 :goto_0

    :cond_c
    move v0, v4

    .line 3138
    goto/16 :goto_0

    .line 3141
    :cond_d
    const/16 v0, -0x130

    if-ne p1, v0, :cond_f

    .line 3142
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEditorHasText:Z

    if-eqz v0, :cond_e

    move v0, v5

    .line 3143
    goto/16 :goto_0

    :cond_e
    move v0, v4

    .line 3145
    goto/16 :goto_0

    .line 3147
    :cond_f
    const/16 v0, -0x12e

    if-ne p1, v0, :cond_11

    .line 3148
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/ClipboardManager;

    .line 3149
    invoke-virtual {p0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3150
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_10

    move v0, v5

    .line 3151
    goto/16 :goto_0

    :cond_10
    move v0, v4

    .line 3153
    goto/16 :goto_0

    :cond_11
    move v0, v5

    .line 3156
    goto/16 :goto_0

    :cond_12
    move v0, v5

    .line 3159
    goto/16 :goto_0

    .line 3161
    :cond_13
    if-ne v1, v7, :cond_15

    move v0, v4

    .line 3162
    :goto_1
    sget-object v1, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    array-length v1, v1

    if-ge v0, v1, :cond_25

    .line 3163
    sget-object v1, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_14

    move v0, v5

    .line 3165
    goto/16 :goto_0

    .line 3162
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3168
    :cond_15
    if-ne v1, v6, :cond_19

    .line 3170
    const/16 v1, 0x3000

    if-ne v0, v1, :cond_16

    .line 3171
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3180
    :goto_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    move v0, v5

    .line 3181
    goto/16 :goto_0

    .line 3172
    :cond_16
    const/16 v1, 0x2000

    if-ne v0, v1, :cond_17

    .line 3173
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3174
    :cond_17
    const/16 v1, 0x1000

    if-ne v0, v1, :cond_18

    .line 3175
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3177
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 3183
    :cond_19
    const/4 v0, 0x4

    if-ne v1, v0, :cond_1f

    .line 3185
    const/16 v0, 0x10

    if-ne v2, v0, :cond_1b

    move v0, v4

    .line 3186
    :goto_3
    sget-object v1, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 3187
    sget-object v1, Landroid/text/method/DateKeyListener;->CHARACTERS:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_1a

    move v0, v5

    .line 3189
    goto/16 :goto_0

    .line 3186
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 3192
    :cond_1b
    const/16 v0, 0x20

    if-ne v2, v0, :cond_1d

    move v0, v4

    .line 3193
    :goto_4
    sget-object v1, Landroid/text/method/TimeKeyListener;->CHARACTERS:[C

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 3194
    sget-object v1, Landroid/text/method/TimeKeyListener;->CHARACTERS:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_1c

    move v0, v5

    .line 3196
    goto/16 :goto_0

    .line 3193
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3199
    :cond_1d
    if-nez v2, :cond_24

    move v0, v4

    .line 3200
    :goto_5
    sget-object v1, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    array-length v1, v1

    if-ge v0, v1, :cond_24

    .line 3201
    sget-object v1, Landroid/text/method/DateTimeKeyListener;->CHARACTERS:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_1e

    move v0, v5

    .line 3203
    goto/16 :goto_0

    .line 3200
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 3207
    :cond_1f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-ne v0, v7, :cond_22

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eq v0, v7, :cond_20

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v6, :cond_22

    .line 3210
    :cond_20
    if-eq p1, v8, :cond_21

    move v0, v5

    .line 3211
    goto/16 :goto_0

    :cond_21
    move v0, v4

    .line 3213
    goto/16 :goto_0

    .line 3215
    :cond_22
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-ne v0, v6, :cond_23

    const v0, 0xffe6

    if-ne p1, v0, :cond_23

    move v0, v4

    .line 3217
    goto/16 :goto_0

    :cond_23
    move v0, v5

    .line 3219
    goto/16 :goto_0

    :cond_24
    move v0, v5

    goto/16 :goto_0

    :cond_25
    move v0, v4

    goto/16 :goto_0
.end method

.method onBufferDraw()V
    .locals 37

    .prologue
    .line 1659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    .line 1661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardChanged:Z

    move v5, v0

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDismissMiniKeyboard:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 1662
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v5, v0

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardChanged:Z

    move v5, v0

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v6

    if-ne v5, v6, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDismissMiniKeyboard:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 1665
    :cond_2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 1675
    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1676
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDismissMiniKeyboard:Z

    .line 1678
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateAll()V

    .line 1679
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardChanged:Z

    .line 1682
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCanvas:Landroid/graphics/Canvas;

    move-object v5, v0

    .line 1683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v6, v0

    sget-object v7, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1685
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    move v6, v0

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    move v6, v0

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonsKeyboard:Z

    move v6, v0

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSymbolsKeyboard:Z

    move v6, v0

    if-eqz v6, :cond_c

    .line 1686
    :cond_5
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 1687
    const/16 v7, 0xff

    const/16 v8, 0x5c

    const/16 v9, 0x5c

    const/16 v10, 0x5c

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 1688
    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1689
    const/4 v6, 0x0

    .line 1690
    const/4 v7, 0x0

    .line 1692
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonsKeyboard:Z

    move v8, v0

    if-eqz v8, :cond_7

    .line 1693
    const/4 v6, 0x3

    .line 1694
    const/4 v7, 0x6

    move v8, v6

    .line 1708
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f020121

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1709
    const/4 v6, 0x0

    const/4 v10, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v12

    invoke-virtual {v9, v6, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1710
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v10, 0x7f020222

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1711
    const/4 v6, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v12

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    invoke-virtual {v10, v6, v11, v12, v13}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1713
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v6

    invoke-virtual {v6}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v6

    const/4 v11, 0x0

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/Keyboard$Key;

    .line 1715
    const/4 v11, 0x1

    :goto_1
    if-gt v11, v8, :cond_a

    .line 1716
    const/4 v12, 0x0

    iget v13, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v14, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    mul-int/2addr v14, v11

    add-int/2addr v13, v14

    int-to-float v13, v13

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1717
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1718
    const/4 v12, 0x0

    iget v13, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v14, v6, Landroid/inputmethodservice/Keyboard$Key;->height:I

    mul-int/2addr v14, v11

    add-int/2addr v13, v14

    neg-int v13, v13

    int-to-float v13, v13

    invoke-virtual {v5, v12, v13}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1715
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1666
    :catch_0
    move-exception v5

    .line 1667
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 1668
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 2516
    :cond_6
    :goto_2
    return-void

    .line 1670
    :catch_1
    move-exception v5

    .line 1671
    invoke-virtual {v5}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1672
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 1695
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    move v8, v0

    if-eqz v8, :cond_9

    .line 1696
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsVerticalKeyboard:Z

    move v6, v0

    if-eqz v6, :cond_8

    .line 1697
    const/4 v6, 0x3

    .line 1698
    const/4 v7, 0x1

    move v8, v6

    goto/16 :goto_0

    .line 1700
    :cond_8
    const/4 v6, 0x1

    .line 1701
    const/4 v7, 0x3

    move v8, v6

    goto/16 :goto_0

    .line 1703
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSymbolsKeyboard:Z

    move v8, v0

    if-eqz v8, :cond_83

    .line 1704
    const/4 v6, 0x1

    .line 1705
    const/4 v7, 0x6

    move v8, v6

    goto/16 :goto_0

    .line 1721
    :cond_a
    const/4 v8, 0x1

    :goto_3
    if-gt v8, v7, :cond_b

    .line 1722
    iget v11, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v12, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    mul-int/2addr v12, v8

    add-int/2addr v11, v12

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1723
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1724
    iget v11, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v12, v6, Landroid/inputmethodservice/Keyboard$Key;->width:I

    mul-int/2addr v12, v8

    add-int/2addr v11, v12

    neg-int v11, v11

    int-to-float v11, v11

    const/4 v12, 0x0

    invoke-virtual {v5, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1721
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1726
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsVerticalKeyboard:Z

    move v6, v0

    if-eqz v6, :cond_e

    .line 1727
    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v7

    const/4 v8, 0x3

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1728
    invoke-virtual {v10, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1729
    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v7

    const/4 v8, 0x3

    sub-int/2addr v7, v8

    neg-int v7, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1737
    :cond_c
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object v6, v0

    if-eqz v6, :cond_6

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object v7, v0

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mClipRegion:Landroid/graphics/Rect;

    move-object v6, v0

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPadding:Landroid/graphics/Rect;

    move-object v8, v0

    .line 1746
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v9

    .line 1747
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v10

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v11

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    move-object v12, v0

    .line 1751
    const/16 v13, 0xff

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1752
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyTextColor:I

    move v13, v0

    invoke-virtual {v7, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 1753
    const/4 v13, 0x0

    .line 1756
    if-eqz v12, :cond_d

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1758
    iget v14, v12, Landroid/inputmethodservice/Keyboard$Key;->x:I

    add-int/2addr v14, v9

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    iget v15, v6, Landroid/graphics/Rect;->left:I

    if-gt v14, v15, :cond_d

    iget v14, v12, Landroid/inputmethodservice/Keyboard$Key;->y:I

    add-int/2addr v14, v10

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    iget v15, v6, Landroid/graphics/Rect;->top:I

    if-gt v14, v15, :cond_d

    iget v14, v12, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v15, v12, Landroid/inputmethodservice/Keyboard$Key;->width:I

    add-int/2addr v14, v15

    add-int/2addr v14, v9

    add-int/lit8 v14, v14, 0x1

    iget v15, v6, Landroid/graphics/Rect;->right:I

    if-lt v14, v15, :cond_d

    iget v14, v12, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget v15, v12, Landroid/inputmethodservice/Keyboard$Key;->height:I

    add-int/2addr v14, v15

    add-int/2addr v14, v10

    add-int/lit8 v14, v14, 0x1

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-lt v14, v6, :cond_d

    .line 1763
    const/4 v6, 0x1

    move v13, v6

    .line 1767
    :cond_d
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    .line 1768
    const/4 v6, 0x0

    .line 1770
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentNormalKeyLabelSize()I

    move-result v15

    .line 1771
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelSize()I

    move-result v16

    .line 1772
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentEmoticonKeyLabelSize()I

    move-result v17

    .line 1773
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentEnterkeyLabelSize()I

    move-result v18

    .line 1774
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentNormalKeyLabelColor()I

    move-result v19

    .line 1775
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentFunctionKeyLabelColor()I

    move-result v20

    .line 1776
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentDisableKeyLabelColor()I

    move-result v21

    .line 1778
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentExtraKeyLabelSize()I

    move-result v22

    .line 1779
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentExtraKeyLabelColor()I

    move-result v23

    .line 1781
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWwwDotComKeyLabelSize()I

    move-result v24

    .line 1783
    const/16 v25, 0x0

    move/from16 v26, v6

    :goto_5
    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_7e

    if-nez v26, :cond_7e

    .line 1784
    move-object v0, v11

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/Keyboard$Key;

    .line 1785
    if-eqz v13, :cond_f

    if-eq v12, v6, :cond_f

    move/from16 v6, v26

    .line 1783
    :goto_6
    add-int/lit8 v25, v25, 0x1

    move/from16 v26, v6

    goto :goto_5

    .line 1731
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1732
    invoke-virtual {v9, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1733
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v6

    const/4 v7, 0x3

    sub-int/2addr v6, v7

    neg-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_4

    .line 1789
    :cond_f
    if-eqz v13, :cond_10

    if-ne v12, v6, :cond_10

    const/16 v26, 0x1

    .line 1791
    :cond_10
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    .line 1792
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    .line 1795
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    if-eqz v29, :cond_81

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v29, v0

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-lt v0, v1, :cond_81

    .line 1796
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    const/16 v30, 0xa

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_22

    .line 1797
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShouldShowEmoticon()Z

    move-result v29

    if-eqz v29, :cond_20

    .line 1798
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentEnterIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v28

    .line 1799
    if-eqz v28, :cond_11

    move-object/from16 v27, v28

    .line 1803
    :cond_11
    const/16 v28, 0x0

    .line 1804
    const-string v29, ":-)"

    move-object/from16 v0, v29

    move-object v1, v6

    iput-object v0, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1805
    const v29, 0x7f050027

    move/from16 v0, v29

    move-object v1, v6

    iput v0, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    move-object/from16 v36, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v36

    .line 1900
    :goto_7
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyBackGround(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 1902
    invoke-virtual {v6}, Landroid/inputmethodservice/Keyboard$Key;->getCurrentDrawableState()[I

    move-result-object v30

    .line 1903
    invoke-virtual/range {v29 .. v30}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v30

    if-nez v30, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v30

    if-eqz v30, :cond_35

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    const/16 v31, 0x30

    move/from16 v0, v30

    move/from16 v1, v31

    if-lt v0, v1, :cond_35

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    const/16 v31, 0x39

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v30

    if-nez v30, :cond_35

    .line 1910
    const/16 v27, 0x0

    .line 1920
    :cond_12
    :goto_8
    if-nez v27, :cond_38

    const/16 v27, 0x0

    .line 1927
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getExtraKeyLable(I)Ljava/lang/String;

    move-result-object v30

    .line 1930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v31

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_13

    .line 1931
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    packed-switch v31, :pswitch_data_0

    .line 2021
    :cond_13
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v31

    if-eqz v31, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v31

    if-nez v31, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v31

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v31

    const/16 v32, 0x4

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_15

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    const/16 v32, 0x20

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_15

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    const/16 v32, 0xa

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_15

    if-eqz v28, :cond_15

    .line 2027
    const/16 v27, 0x0

    .line 2030
    :cond_15
    if-eqz v13, :cond_16

    .line 2031
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeypadBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v31

    .line 2032
    if-eqz v31, :cond_16

    .line 2033
    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2037
    :cond_16
    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v31

    .line 2038
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v33, v0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_17

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v32, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    move/from16 v0, v32

    move/from16 v1, v31

    if-eq v0, v1, :cond_18

    .line 2039
    :cond_17
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v33, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v34, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2041
    :cond_18
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move/from16 v31, v0

    add-int v31, v31, v9

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    move/from16 v32, v0

    add-int v32, v32, v10

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2042
    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2045
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    const/16 v31, -0x69

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_3d

    .line 2046
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_19

    .line 2047
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v29, v0

    if-eqz v29, :cond_19

    .line 2048
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getSymbolArrowKeyPressBG(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 2049
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v33, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v34, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2050
    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2118
    :cond_19
    :goto_b
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    const/16 v31, -0x69

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_1a

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    const/16 v31, -0x68

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_43

    .line 2119
    :cond_1a
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->drawArrowTextBox(Landroid/graphics/Canvas;Landroid/inputmethodservice/Keyboard$Key;)V

    .line 2182
    :cond_1b
    :goto_c
    if-eqz v28, :cond_1c

    .line 2183
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    const/16 v31, -0x69

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_47

    .line 2184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_1c

    .line 2185
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    sub-int v29, v29, v31

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v29, v29, v31

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v31

    sub-int v29, v29, v31

    mul-int/lit8 v29, v29, 0x2

    div-int/lit8 v29, v29, 0x3

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    add-int v29, v29, v31

    .line 2186
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v31, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v32

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    add-int v31, v31, v32

    .line 2187
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v33, v0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2188
    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v34

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v35

    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2189
    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2190
    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object v0, v5

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2211
    :cond_1c
    :goto_d
    if-eqz v30, :cond_1d

    const-string v28, "0"

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1d

    const-string v28, "1"

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1d

    const-string v28, "2"

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1d

    const-string v28, "3"

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1d

    const-string v28, "4"

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1d

    const-string v28, "5"

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1d

    const-string v28, "6"

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1d

    const-string v28, "7"

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1d

    const-string v28, "8"

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1d

    const-string v28, "9"

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_1d

    .line 2222
    move-object v0, v7

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2223
    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2224
    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move-object/from16 v3, v30

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->drawExtraLabel(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;Landroid/inputmethodservice/Keyboard$Key;)V

    .line 2226
    :cond_1d
    const/16 v28, 0x0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 2227
    if-eqz v27, :cond_1f

    const-string v28, "StrEmpty"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v28

    if-eqz v28, :cond_1f

    .line 2228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v28

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4a

    .line 2229
    move v0, v15

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    move-object/from16 v28, v0

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2231
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_49

    move/from16 v28, v20

    :goto_e
    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2321
    :goto_f
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentShadowColor(IZ)I

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    .line 2322
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_66

    .line 2323
    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v31, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    move/from16 v32, v0

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2329
    :goto_10
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    const/16 v29, -0x72

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_67

    .line 2489
    :cond_1e
    :goto_11
    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object v0, v7

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 2491
    :cond_1f
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    move/from16 v27, v0

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    sub-int v27, v27, v9

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    iget v6, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    neg-int v6, v6

    sub-int/2addr v6, v10

    int-to-float v6, v6

    move-object v0, v5

    move/from16 v1, v27

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move/from16 v6, v26

    goto/16 :goto_6

    .line 1806
    :cond_20
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isCurrentEnterActionIcon()Z

    move-result v29

    if-eqz v29, :cond_21

    .line 1807
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentEnterIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 1808
    if-eqz v29, :cond_82

    .line 1810
    const/16 v27, 0x0

    move-object/from16 v28, v29

    .line 1812
    :goto_12
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object v1, v6

    iput-object v0, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1813
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object v1, v6

    iput v0, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto/16 :goto_7

    .line 1815
    :cond_21
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentEnterLabel()Ljava/lang/CharSequence;

    move-result-object v27

    .line 1816
    const/16 v28, 0x0

    .line 1817
    const/16 v29, 0x0

    move-object/from16 v0, v29

    move-object v1, v6

    iput-object v0, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1818
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object v1, v6

    iput v0, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    goto/16 :goto_7

    .line 1820
    :cond_22
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    const/16 v30, -0x66

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2a

    .line 1821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v27

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-lt v0, v1, :cond_23

    const/16 v27, 0x1

    :goto_13
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeKeyLabel(Z)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a003c

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_29

    .line 1824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v27

    const/16 v28, 0x4

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_26

    .line 1825
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v27

    if-nez v27, :cond_24

    .line 1826
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f020097

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    .line 1845
    :goto_14
    const/16 v28, 0x0

    move-object/from16 v36, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v36

    goto/16 :goto_7

    .line 1821
    :cond_23
    const/16 v27, 0x0

    goto :goto_13

    .line 1828
    :cond_24
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_25

    .line 1829
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f020098

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    goto :goto_14

    .line 1831
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f020096

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    goto :goto_14

    .line 1835
    :cond_26
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v27

    if-nez v27, :cond_27

    .line 1836
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f02009c

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    goto :goto_14

    .line 1838
    :cond_27
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_28

    .line 1839
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f02009d

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    goto :goto_14

    .line 1841
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f02009b

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v27

    goto :goto_14

    .line 1847
    :cond_29
    const/16 v27, 0x0

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->MODE_CHANGE_KEYLABEL:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v36, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v36

    goto/16 :goto_7

    .line 1850
    :cond_2a
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    const/16 v30, -0xc9

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2c

    .line 1851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2b

    .line 1852
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a00a5

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v6

    iput-object v0, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1853
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    .line 1854
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object v1, v6

    iput v0, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    move-object/from16 v36, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v36

    goto/16 :goto_7

    .line 1856
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a00a6

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v6

    iput-object v0, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1857
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    .line 1858
    const v29, 0x7f050022

    move/from16 v0, v29

    move-object v1, v6

    iput v0, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    move-object/from16 v36, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v36

    goto/16 :goto_7

    .line 1860
    :cond_2c
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    const/16 v30, -0xc8

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_2e

    .line 1861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_2d

    .line 1862
    const-string v28, ""

    move-object/from16 v0, v28

    move-object v1, v6

    iput-object v0, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1863
    const-string v28, ""

    .line 1864
    const/16 v29, 0x0

    move/from16 v0, v29

    move-object v1, v6

    iput v0, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    move-object/from16 v36, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v36

    goto/16 :goto_7

    .line 1866
    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a00ac

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object v1, v6

    iput-object v0, v1, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    .line 1867
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    .line 1868
    const v29, 0x7f050026

    move/from16 v0, v29

    move-object v1, v6

    iput v0, v1, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    move-object/from16 v36, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v36

    goto/16 :goto_7

    .line 1870
    :cond_2e
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isNeedChangeKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v29

    if-eqz v29, :cond_81

    .line 1871
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 1872
    if-eqz v29, :cond_81

    .line 1873
    const/16 v27, 0x0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v31

    invoke-virtual/range {v29 .. v29}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v32

    move-object/from16 v0, v29

    move/from16 v1, v27

    move/from16 v2, v30

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v27

    const/16 v30, 0x4

    move/from16 v0, v27

    move/from16 v1, v30

    if-ne v0, v1, :cond_30

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v27, v0

    const/16 v30, 0x0

    aget v27, v27, v30

    const/16 v30, -0x130

    move/from16 v0, v27

    move/from16 v1, v30

    if-ne v0, v1, :cond_30

    .line 1877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    move/from16 v27, v0

    if-eqz v27, :cond_2f

    .line 1878
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a00d0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v28, v29

    goto/16 :goto_7

    .line 1880
    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a00cf

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v28, v29

    goto/16 :goto_7

    .line 1882
    :cond_30
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v27, v0

    const/16 v30, 0x0

    aget v27, v27, v30

    const/16 v30, 0x20

    move/from16 v0, v27

    move/from16 v1, v30

    if-ne v0, v1, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v27

    if-eqz v27, :cond_32

    .line 1884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v27

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v27

    if-nez v27, :cond_31

    .line 1886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v28, v29

    goto/16 :goto_7

    .line 1888
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v28, v29

    goto/16 :goto_7

    .line 1890
    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v27

    if-eqz v27, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v27

    if-nez v27, :cond_34

    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v27

    const/16 v30, 0x5

    move/from16 v0, v27

    move/from16 v1, v30

    if-eq v0, v1, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v27

    const/16 v30, 0x4

    move/from16 v0, v27

    move/from16 v1, v30

    if-eq v0, v1, :cond_34

    :cond_34
    move-object/from16 v27, v28

    move-object/from16 v28, v29

    goto/16 :goto_7

    .line 1911
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v30

    const/16 v31, 0x6

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_36

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    const/16 v31, 0xa

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_37

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v30

    if-eqz v30, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v30

    if-eqz v30, :cond_12

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v30

    if-nez v30, :cond_12

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLandscapeQwertySoftkeys(I)Z

    move-result v30

    if-nez v30, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    move/from16 v30, v0

    if-nez v30, :cond_12

    .line 1916
    :cond_37
    const/16 v27, 0x0

    goto/16 :goto_8

    .line 1920
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v30

    const/16 v31, 0x4

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_39

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_9

    :cond_39
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    const/16 v31, 0x20

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v30

    if-eqz v30, :cond_3a

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_9

    :cond_3a
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    const/16 v31, 0xa

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3b

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_9

    :cond_3b
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    const/16 v31, -0x6f

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_3c

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_9

    :cond_3c
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_9

    .line 1933
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v27

    .line 1935
    const-string v31, "1"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 1936
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 1940
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v27

    .line 1942
    const-string v31, "2"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 1943
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 1947
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v27

    .line 1949
    const-string v31, "3"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 1950
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 1954
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v27

    .line 1956
    const-string v31, "4"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 1957
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 1961
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v27

    .line 1963
    const-string v31, "5"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 1964
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 1968
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v27

    .line 1970
    const-string v31, "6"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 1971
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 1975
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v27

    .line 1977
    const-string v31, "7"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 1978
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 1982
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v27

    .line 1984
    const-string v31, "8"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 1985
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 1989
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v27

    .line 1991
    const-string v31, "9"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 1992
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 1996
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v27

    .line 1998
    const-string v31, "10"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 1999
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 2003
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v27

    .line 2005
    const-string v31, "11"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 2006
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 2010
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v31, v0

    const/16 v32, 0x0

    aget v31, v31, v32

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v27

    .line 2012
    const-string v31, "12"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 2013
    const/16 v28, 0x0

    goto/16 :goto_a

    .line 2053
    :cond_3d
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    const/16 v31, -0x68

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_3e

    .line 2054
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_19

    .line 2055
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v29, v0

    if-eqz v29, :cond_19

    .line 2056
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getSymbolArrowKeyPressBG(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 2057
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v33, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v34, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2058
    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_b

    .line 2083
    :cond_3e
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    const/16 v31, -0x67

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_42

    .line 2084
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v29

    if-eqz v29, :cond_19

    .line 2085
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v29, v0

    if-eqz v29, :cond_40

    .line 2087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_3f

    .line 2088
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v31, 0x7f020123

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 2092
    :goto_15
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v33, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v34, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2093
    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_b

    .line 2090
    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v31, 0x7f02009a

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    goto :goto_15

    .line 2096
    :cond_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_41

    .line 2097
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v31, 0x7f020122

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 2101
    :goto_16
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v33, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v34, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2102
    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_b

    .line 2099
    :cond_41
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v31, 0x7f020099

    move-object/from16 v0, v29

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    goto :goto_16

    .line 2105
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_19

    const/16 v29, 0xa

    move/from16 v0, v25

    move/from16 v1, v29

    if-gt v0, v1, :cond_19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    move/from16 v29, v0

    if-nez v29, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v29

    if-eqz v29, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v29

    if-nez v29, :cond_19

    .line 2110
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v25

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getExtraNumIcon(ZILandroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 2111
    if-eqz v29, :cond_19

    .line 2112
    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v33, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v34, v0

    move-object/from16 v0, v29

    move/from16 v1, v31

    move/from16 v2, v32

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2113
    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_b

    .line 2120
    :cond_43
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    const/16 v31, -0xd2

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_44

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    const/16 v31, -0x100

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_1b

    .line 2123
    :cond_44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    move-object/from16 v29, v0

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2124
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->HWR_BOX_LABEL_SIZE:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object v0, v7

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2125
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->HWR_BOX_LABEL_COLOR:I

    move/from16 v29, v0

    move-object v0, v7

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2126
    sget-object v29, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v29

    const/16 v31, 0x3

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_45

    .line 2130
    sget-object v29, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2131
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeBoxLabel(I)Ljava/lang/String;

    move-result-object v29

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    mul-int/lit8 v31, v31, 0x13

    div-int/lit8 v31, v31, 0x28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v33

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v34

    sub-float v33, v33, v34

    const/high16 v34, 0x4000

    div-float v33, v33, v34

    sub-float v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move-object v0, v5

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v32

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2135
    const/16 v29, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeBoxLabel(I)Ljava/lang/String;

    move-result-object v29

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    mul-int/lit8 v31, v31, 0x27

    div-int/lit8 v31, v31, 0x28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v32, v0

    div-int/lit8 v32, v32, 0x2

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v33

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v34

    sub-float v33, v33, v34

    const/high16 v34, 0x4000

    div-float v33, v33, v34

    sub-float v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move-object v0, v5

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v32

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2139
    const/16 v29, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeBoxLabel(I)Ljava/lang/String;

    move-result-object v29

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    mul-int/lit8 v31, v31, 0x13

    div-int/lit8 v31, v31, 0x28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v33

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v34

    sub-float v33, v33, v34

    const/high16 v34, 0x4000

    div-float v33, v33, v34

    sub-float v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move-object v0, v5

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v32

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2143
    const/16 v29, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeBoxLabel(I)Ljava/lang/String;

    move-result-object v29

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    mul-int/lit8 v31, v31, 0x27

    div-int/lit8 v31, v31, 0x28

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v33

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v34

    sub-float v33, v33, v34

    const/high16 v34, 0x4000

    div-float v33, v33, v34

    sub-float v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move-object v0, v5

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v32

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2179
    :goto_17
    sget-object v29, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object v0, v7

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto/16 :goto_c

    .line 2148
    :cond_45
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    const/16 v31, -0x100

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_46

    .line 2149
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeypadBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v29

    .line 2150
    if-eqz v29, :cond_46

    .line 2151
    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2154
    :cond_46
    const/16 v29, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getModeKeyLabel(Z)Ljava/lang/String;

    move-result-object v29

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x14

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v32

    add-int v31, v31, v32

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-float v0, v0

    move/from16 v32, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v33

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v34

    sub-float v33, v33, v34

    const/high16 v34, 0x4000

    div-float v33, v33, v34

    sub-float v32, v32, v33

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v33

    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v33, v0

    add-float v32, v32, v33

    move-object v0, v5

    move-object/from16 v1, v29

    move/from16 v2, v31

    move/from16 v3, v32

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_17

    .line 2192
    :cond_47
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v29, v0

    const/16 v31, 0x0

    aget v29, v29, v31

    const/16 v31, -0x68

    move/from16 v0, v29

    move/from16 v1, v31

    if-ne v0, v1, :cond_48

    .line 2193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v29

    const/16 v31, 0x2

    move/from16 v0, v29

    move/from16 v1, v31

    if-eq v0, v1, :cond_1c

    .line 2194
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    sub-int v29, v29, v31

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v29, v29, v31

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v31

    sub-int v29, v29, v31

    div-int/lit8 v29, v29, 0x3

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    add-int v29, v29, v31

    .line 2195
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v31, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v32

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    add-int v31, v31, v32

    .line 2196
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v33, v0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2197
    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v34

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v35

    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2198
    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2199
    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object v0, v5

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_d

    .line 2202
    :cond_48
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    sub-int v29, v29, v31

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v31, v0

    sub-int v29, v29, v31

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v31

    sub-int v29, v29, v31

    div-int/lit8 v29, v29, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v31, v0

    add-int v29, v29, v31

    .line 2203
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v31, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v32

    sub-int v31, v31, v32

    div-int/lit8 v31, v31, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v32, v0

    add-int v31, v31, v32

    .line 2204
    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v33, v0

    move-object v0, v5

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2205
    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v34

    invoke-virtual/range {v28 .. v28}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v35

    move-object/from16 v0, v28

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2206
    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2207
    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v31

    neg-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    move-object v0, v5

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_d

    :cond_49
    move/from16 v28, v19

    .line 2231
    goto/16 :goto_e

    .line 2232
    :cond_4a
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    const/16 v29, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4b

    .line 2233
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    move-object/from16 v28, v0

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2236
    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    .line 2237
    :cond_4b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    move/from16 v28, v0

    if-eqz v28, :cond_50

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    move-object/from16 v28, v0

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2240
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    if-nez v28, :cond_4c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsModeChangeMiniKeyboard:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4d

    .line 2241
    :cond_4c
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2246
    :goto_18
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_4f

    .line 2247
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_4e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->POPUP_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    move/from16 v28, v0

    :goto_19
    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    .line 2243
    :cond_4d
    move v0, v15

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_18

    :cond_4e
    move/from16 v28, v19

    .line 2247
    goto :goto_19

    .line 2249
    :cond_4f
    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    .line 2251
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5b

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    const/16 v29, -0x12c

    move/from16 v0, v28

    move/from16 v1, v29

    if-gt v0, v1, :cond_5b

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    const/16 v29, -0x130

    move/from16 v0, v28

    move/from16 v1, v29

    if-lt v0, v1, :cond_5b

    .line 2254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    move-object/from16 v28, v0

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2255
    move v0, v15

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2257
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    const/16 v29, -0x12f

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_53

    .line 2258
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_52

    .line 2259
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_51

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    move/from16 v28, v0

    :goto_1a
    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    :cond_51
    move/from16 v28, v20

    goto :goto_1a

    .line 2261
    :cond_52
    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    .line 2263
    :cond_53
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    const/16 v29, -0x130

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_58

    .line 2264
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_57

    .line 2265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    move/from16 v28, v0

    if-eqz v28, :cond_55

    .line 2266
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_54

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    move/from16 v28, v0

    :goto_1b
    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    :cond_54
    move/from16 v28, v20

    goto :goto_1b

    .line 2268
    :cond_55
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_56

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    move/from16 v28, v0

    :goto_1c
    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    :cond_56
    move/from16 v28, v19

    goto :goto_1c

    .line 2271
    :cond_57
    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    .line 2274
    :cond_58
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5a

    .line 2275
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_59

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    move/from16 v28, v0

    :goto_1d
    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    :cond_59
    move/from16 v28, v19

    goto :goto_1d

    .line 2277
    :cond_5a
    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    .line 2280
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v28

    if-eqz v28, :cond_5f

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    const/16 v29, 0x20

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_5f

    .line 2282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QWERTY_KEY_LABEL_SIZE_EMOTICON:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2283
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_5c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    move/from16 v28, v0

    :goto_1e
    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2286
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    move/from16 v28, v0

    const/16 v29, 0xf0

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_5e

    .line 2287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    move-object/from16 v28, v0

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/16 :goto_f

    .line 2283
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v28

    if-eqz v28, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v28

    if-nez v28, :cond_5d

    move/from16 v28, v20

    goto :goto_1e

    :cond_5d
    move/from16 v28, v19

    goto :goto_1e

    .line 2289
    :cond_5e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFace:Landroid/graphics/Typeface;

    move-object/from16 v28, v0

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2290
    const/16 v28, 0x80

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/16 :goto_f

    .line 2294
    :cond_5f
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLandscapeQwertySoftkeys(I)Z

    move-result v28

    if-nez v28, :cond_60

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v28

    if-eqz v28, :cond_62

    .line 2295
    :cond_60
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    move-object/from16 v28, v0

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2298
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v28

    if-eqz v28, :cond_61

    .line 2299
    move-object v0, v7

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    .line 2301
    :cond_61
    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    .line 2304
    :cond_62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    move-object/from16 v28, v0

    move-object v0, v7

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2307
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->text:Ljava/lang/CharSequence;

    move-object/from16 v28, v0

    if-eqz v28, :cond_63

    .line 2308
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2313
    :goto_1f
    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_65

    .line 2314
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PHONEPAD_KEY_LABEL_COLOR_NORMAL_PRESSED:I

    move/from16 v28, v0

    :goto_20
    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    .line 2310
    :cond_63
    move v0, v15

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1f

    :cond_64
    move/from16 v28, v19

    .line 2314
    goto :goto_20

    .line 2316
    :cond_65
    move-object v0, v7

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_f

    .line 2325
    :cond_66
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowRadius:F

    move/from16 v28, v0

    const/high16 v29, -0x4080

    const/high16 v31, -0x4080

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShadowColor:I

    move/from16 v32, v0

    move-object v0, v7

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v31

    move/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_10

    .line 2332
    :cond_67
    if-eqz v30, :cond_6e

    .line 2333
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6a

    .line 2334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v28

    if-eqz v28, :cond_68

    .line 2336
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3e99999a

    mul-float v29, v29, v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2340
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v28

    if-eqz v28, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v28

    if-eqz v28, :cond_69

    .line 2343
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    mul-int/lit8 v29, v29, 0xb

    div-int/lit8 v29, v29, 0x14

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2348
    :cond_69
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2354
    :cond_6a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v28

    const/16 v29, 0x1

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6b

    .line 2355
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3e99999a

    mul-float v29, v29, v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2360
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v28

    if-nez v28, :cond_6c

    .line 2361
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    const v30, 0x3f19999a

    mul-float v29, v29, v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2365
    :cond_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v28

    if-eqz v28, :cond_6d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v28

    if-eqz v28, :cond_6d

    .line 2368
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    mul-int/lit8 v29, v29, 0xb

    div-int/lit8 v29, v29, 0x14

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2373
    :cond_6d
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2379
    :cond_6e
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a00a6

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_70

    .line 2381
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_6f

    .line 2382
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2386
    :goto_21
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2384
    :cond_6f
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_21

    .line 2402
    :cond_70
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0a00a5

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_72

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v28

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_72

    .line 2404
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    move/from16 v28, v0

    if-eqz v28, :cond_71

    .line 2405
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2409
    :goto_22
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2407
    :cond_71
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v7

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_22

    .line 2425
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v28

    const/16 v29, 0x5

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_75

    .line 2426
    new-instance v28, Ljava/text/DateFormatSymbols;

    invoke-direct/range {v28 .. v28}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 2427
    invoke-virtual/range {v28 .. v28}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v28

    .line 2429
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLocaleKorean()Z

    move-result v29

    if-nez v29, :cond_73

    const/16 v29, 0x0

    aget-object v28, v28, v29

    const-string v29, "1"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_74

    .line 2430
    :cond_73
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2435
    :cond_74
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const v29, 0x3f266666

    mul-float v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    add-float v28, v28, v29

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2440
    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v28

    const/16 v29, 0x4

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_76

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    const/16 v29, 0xa

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_76

    .line 2442
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    mul-int/lit8 v29, v29, 0x4

    div-int/lit8 v29, v29, 0x5

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2446
    :cond_76
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v28

    if-eqz v28, :cond_7c

    move-object v0, v6

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    const/16 v29, 0x20

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_7c

    .line 2448
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    mul-int/lit8 v29, v29, 0x1

    div-int/lit8 v29, v29, 0x4

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v28

    if-nez v28, :cond_1e

    .line 2454
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    move/from16 v0, v28

    new-array v0, v0, [F

    move-object/from16 v28, v0

    .line 2455
    move-object v0, v7

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 2456
    const/16 v29, 0x0

    .line 2457
    const/16 v30, 0x0

    move/from16 v36, v30

    move/from16 v30, v29

    move/from16 v29, v36

    :goto_23
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v31

    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_77

    .line 2458
    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    aget v31, v28, v29

    add-float v30, v30, v31

    const/high16 v31, 0x3f00

    add-float v30, v30, v31

    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v30, v0

    .line 2457
    add-int/lit8 v29, v29, 0x1

    goto :goto_23

    .line 2461
    :cond_77
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT_PRESS:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    .line 2463
    :goto_24
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    sub-int v28, v28, v30

    div-int/lit8 v28, v28, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLanguageSpaceGap:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v29

    sub-int v28, v28, v29

    .line 2464
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    sub-int v29, v29, v31

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v31, v0

    sub-int v29, v29, v31

    mul-int/lit8 v29, v29, 0x1

    div-int/lit8 v29, v29, 0x4

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v31

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v32

    sub-float v31, v31, v32

    const/high16 v32, 0x4000

    div-float v31, v31, v32

    add-float v29, v29, v31

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    add-float v29, v29, v31

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceArrowVerticalCorrection:F

    move/from16 v32, v0

    mul-float v31, v31, v32

    sub-float v29, v29, v31

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    .line 2465
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v31, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v32, v0

    move-object v0, v5

    move/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2466
    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2467
    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v5

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2469
    move-object v0, v6

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    move/from16 v27, v0

    if-eqz v27, :cond_7a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT_PRESS:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    .line 2471
    :goto_25
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    add-int v28, v28, v30

    div-int/lit8 v28, v28, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLanguageSpaceGap:I

    move/from16 v29, v0

    add-int v28, v28, v29

    .line 2472
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    mul-int/lit8 v29, v29, 0x1

    div-int/lit8 v29, v29, 0x4

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v30

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceArrowVerticalCorrection:F

    move/from16 v31, v0

    mul-float v30, v30, v31

    sub-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    .line 2473
    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v30, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v31, v0

    move-object v0, v5

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2474
    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2475
    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move/from16 v0, v29

    neg-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v5

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    goto/16 :goto_11

    .line 2461
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v27

    if-eqz v27, :cond_79

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v27

    if-nez v27, :cond_79

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    goto/16 :goto_24

    :cond_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_LEFT:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    goto/16 :goto_24

    .line 2469
    :cond_7a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v27

    if-eqz v27, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v27

    if-nez v27, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_HANDWRITING_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    goto/16 :goto_25

    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->LANGUAGE_SPACE_ARROW_RIGHT:Landroid/graphics/drawable/Drawable;

    move-object/from16 v27, v0

    goto/16 :goto_25

    .line 2478
    :cond_7c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSymbolsKeyboard:Z

    move/from16 v28, v0

    if-eqz v28, :cond_7d

    .line 2481
    :cond_7d
    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    move/from16 v28, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v29, v0

    sub-int v28, v28, v29

    div-int/lit8 v28, v28, 0x2

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v29, v0

    add-int v28, v28, v29

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object v0, v6

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    move/from16 v29, v0

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v30, v0

    sub-int v29, v29, v30

    div-int/lit8 v29, v29, 0x2

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    invoke-virtual {v7}, Landroid/graphics/Paint;->getTextSize()F

    move-result v30

    invoke-virtual {v7}, Landroid/graphics/Paint;->descent()F

    move-result v31

    sub-float v30, v30, v31

    const/high16 v31, 0x4000

    div-float v30, v30, v31

    add-float v29, v29, v30

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v30, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v30, v0

    add-float v29, v29, v30

    move-object v0, v5

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_11

    .line 2493
    :cond_7e
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInvalidatedKey:Landroid/inputmethodservice/Keyboard$Key;

    .line 2496
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    move v6, v0

    if-nez v6, :cond_7f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isExpandCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_80

    .line 2497
    :cond_7f
    new-instance v10, Landroid/graphics/Paint;

    invoke-direct {v10}, Landroid/graphics/Paint;-><init>()V

    .line 2498
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBackgroundDimAmount:F

    move v6, v0

    const/high16 v7, 0x437f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 2499
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 2514
    :cond_80
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setFlagDrawPending(Z)V

    .line 2515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_2

    :cond_81
    move-object/from16 v36, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v36

    goto/16 :goto_7

    :cond_82
    move-object/from16 v36, v28

    move-object/from16 v28, v27

    move-object/from16 v27, v36

    goto/16 :goto_12

    :cond_83
    move v8, v6

    goto/16 :goto_0

    .line 1931
    nop

    :pswitch_data_0
    .packed-switch -0x98
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1214
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->dismissPopupKeyboard()V

    .line 1215
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 5148
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 5149
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->closing()V

    .line 5150
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1645
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1649
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getFlagDrawPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDismissMiniKeyboard:Z

    if-eqz v0, :cond_1

    .line 1650
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onBufferDraw()V

    .line 1653
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1654
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1656
    :cond_2
    return-void
.end method

.method protected onLongPress(Landroid/inputmethodservice/Keyboard$Key;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, -0x1

    const/16 v5, -0x64

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3973
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 4051
    :goto_0
    return v0

    .line 3976
    :cond_0
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    const/4 v1, -0x3

    if-ne v0, v1, :cond_1

    .line 3977
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, v5, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    move v0, v4

    .line 3978
    goto :goto_0

    .line 3979
    :cond_1
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    if-ne v0, v6, :cond_2

    .line 3980
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    const/16 v1, -0x65

    invoke-interface {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    move v0, v4

    .line 3981
    goto :goto_0

    .line 3985
    :cond_2
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    const/16 v1, -0x67

    if-ne v0, v1, :cond_3

    .line 3986
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    invoke-interface {v0, v5, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    .line 3987
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    move v0, v4

    .line 3988
    goto :goto_0

    .line 3990
    :cond_3
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isNeededPopupKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    .line 3991
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInMultiTap:Z

    .line 3993
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v1, :cond_4

    move v0, v3

    .line 3994
    goto :goto_0

    .line 3996
    :cond_4
    if-eqz v0, :cond_6

    .line 3997
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->popupLongPressKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z

    :cond_5
    :goto_1
    move v0, v4

    .line 4051
    goto :goto_0

    .line 3999
    :cond_6
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getExtraKeyLable(I)Ljava/lang/String;

    move-result-object v0

    .line 4000
    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v1

    if-nez v1, :cond_8

    .line 4003
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 4005
    :cond_8
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_a

    .line 4006
    const-string v0, "1234567890/@._-,"

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v6, :cond_9

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    if-ltz v0, :cond_9

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    const/16 v1, 0x20

    if-eq v0, v1, :cond_9

    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    .line 4010
    :cond_9
    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setKeyLongPressed(Z)V

    .line 4011
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto :goto_1

    .line 4014
    :cond_a
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    if-ne v1, v4, :cond_10

    .line 4016
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4017
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_b

    move v0, v3

    .line 4030
    :goto_2
    if-eqz v0, :cond_f

    .line 4031
    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setKeyLongPressed(Z)V

    .line 4032
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v1

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-interface {v1, v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto/16 :goto_1

    .line 4019
    :cond_b
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    const/16 v1, 0x30

    if-ne v0, v1, :cond_c

    .line 4020
    const/16 v0, 0x2b

    goto :goto_2

    .line 4021
    :cond_c
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    const/16 v1, 0x23

    if-ne v0, v1, :cond_e

    move v0, v3

    goto :goto_2

    .line 4025
    :cond_d
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v3

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_e

    :cond_e
    move v0, v3

    goto :goto_2

    :cond_f
    move v0, v3

    .line 4034
    goto/16 :goto_0

    .line 4036
    :cond_10
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-nez v1, :cond_12

    .line 4037
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isNumberMode()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v3

    const/16 v2, 0x30

    if-ne v1, v2, :cond_11

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassText()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4038
    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setKeyLongPressed(Z)V

    .line 4039
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getOnKeyboardActionListener()Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    move-result-object v0

    const/16 v1, 0x2b

    iget-object v2, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    invoke-interface {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onKey(I[I)V

    goto/16 :goto_1

    .line 4040
    :cond_11
    if-nez v0, :cond_5

    move v0, v3

    .line 4041
    goto/16 :goto_0

    :cond_12
    move v0, v3

    .line 4044
    goto/16 :goto_0
.end method

.method public onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1337
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-nez v1, :cond_0

    .line 1338
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setMeasuredDimension(II)V

    .line 1348
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showActionPopup()V

    .line 1350
    return-void

    .line 1340
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getMinWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingRight()I

    move-result v2

    add-int v0, v1, v2

    .line 1341
    .local v0, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    add-int/lit8 v2, v0, 0xa

    if-ge v1, v2, :cond_1

    .line 1342
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1344
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 12
    .parameter "me"
    .parameter "possiblePoly"

    .prologue
    .line 4925
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isPopupMenuShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4927
    const/4 v0, 0x1

    .line 5093
    .end local p2
    :goto_0
    return v0

    .line 4929
    .restart local p2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v1

    sub-int v2, v0, v1

    .line 4930
    .local v2, touchX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v1

    sub-int v3, v0, v1

    .line 4931
    .local v3, touchY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 4932
    .local v6, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 4934
    .local v4, eventTime:J
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsUmlautMiniKeyboard:Z

    if-eqz v0, :cond_1

    if-nez v6, :cond_1

    .line 4935
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v8

    check-cast v8, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 4936
    .local v8, kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    if-eqz v8, :cond_1

    .line 4937
    iget-boolean v0, v8, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->mIsLeft:Z

    if-eqz v0, :cond_4

    .line 4938
    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    .line 4945
    .end local v8           #kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_1
    :goto_1
    iput-wide v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldEventTime:J

    .line 4946
    iput-boolean p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPossiblePoly:Z

    .line 4950
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v3, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyIndices(II[I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    .line 4951
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 4953
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, v2, v3}, Landroid/inputmethodservice/Keyboard;->getNearestKeys(II)[I

    move-result-object v10

    .line 4954
    .local v10, keyIndices:[I
    if-eqz v10, :cond_2

    array-length v0, v10

    if-lez v0, :cond_2

    .line 4955
    invoke-virtual {p0, v2, v3, v10}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getTheNearestKeyIndex(II[I)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    .line 4958
    .end local v10           #keyIndices:[I
    :cond_2
    iget v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentTouchKeyIndex:I

    .line 4961
    .local v9, keyIndex:I
    if-nez v6, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->clear()V

    .line 4962
    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSwipeTracker:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SwipeTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 4964
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4965
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showPreview(I)V

    .line 4966
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4967
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4968
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 4940
    .end local v9           #keyIndex:I
    .restart local v8       #kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    :cond_4
    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v8}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    goto :goto_1

    .line 4973
    .end local v8           #kb:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    .restart local v9       #keyIndex:I
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isExpandCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4974
    :cond_6
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 4977
    :cond_7
    packed-switch v6, :pswitch_data_0

    .line 5091
    .end local v4           #eventTime:J
    .end local v6           #action:I
    .end local p2
    :goto_2
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastX:I

    .line 5092
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastY:I

    .line 5093
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 4979
    .restart local v4       #eventTime:J
    .restart local v6       #action:I
    .restart local p2
    :pswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    .line 4980
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mStartX:I

    .line 4981
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mStartY:I

    .line 4982
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeX:I

    .line 4983
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeY:I

    .line 4984
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKeyTime:J

    .line 4985
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 4986
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    .line 4987
    iput v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 4988
    iput v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownKey:I

    .line 4989
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownTime:J

    .line 4990
    iget-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownTime:J

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    .line 4991
    invoke-virtual {p0, v4, v5, v9}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->checkMultiTap(JI)V

    .line 4994
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsUmlautMiniKeyboard:Z

    if-nez v0, :cond_8

    .line 4995
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    const/4 v1, -0x1

    if-eq v9, v1, :cond_b

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v4, 0x0

    aget v1, v1, v4

    .end local v4           #eventTime:J
    :goto_3
    invoke-interface {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->onPress(I)V

    .line 4998
    :cond_8
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v0, p2, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-eqz v0, :cond_9

    .line 4999
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    .line 5000
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->repeatKey()Z

    .line 5001
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .line 5002
    .local v11, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x190

    invoke-virtual {v0, v11, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5004
    .end local v11           #msg:Landroid/os/Message;
    :cond_9
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 5005
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 5006
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v11, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5008
    .end local v11           #msg:Landroid/os/Message;
    :cond_a
    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showPreview(I)V

    goto/16 :goto_2

    .line 4995
    .restart local v4       #eventTime:J
    .restart local p2
    :cond_b
    const/4 v1, 0x0

    goto :goto_3

    .line 5013
    :pswitch_1
    const/4 v7, 0x0

    .line 5014
    .local v7, continueLongPress:Z
    const/4 v0, -0x1

    if-eq v9, v0, :cond_c

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    if-nez v0, :cond_c

    .line 5015
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 5016
    iput v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 5017
    iget-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mDownTime:J

    sub-long v0, v4, v0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 5035
    .end local v4           #eventTime:J
    .end local v6           #action:I
    .end local p2
    :goto_4
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    if-eq v9, v0, :cond_c

    .line 5036
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5037
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    .line 5040
    :cond_c
    if-nez v7, :cond_d

    .line 5042
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5044
    const/4 v0, -0x1

    if-eq v9, v0, :cond_d

    .line 5045
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 5046
    .restart local v11       #msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x320

    invoke-virtual {v0, v11, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5049
    .end local v11           #msg:Landroid/os/Message;
    :cond_d
    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showPreview(I)V

    goto/16 :goto_2

    .line 5019
    .restart local v4       #eventTime:J
    .restart local v6       #action:I
    .restart local p2
    :cond_e
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    if-ne v9, v0, :cond_f

    .line 5020
    iget-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    iget-wide v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    .end local v6           #action:I
    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 5021
    .end local v4           #eventTime:J
    const/4 v7, 0x1

    goto :goto_4

    .line 5023
    .restart local v4       #eventTime:J
    .restart local v6       #action:I
    :cond_f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->resetMultiTap()V

    .line 5025
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v1, p2, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    .end local v6           #action:I
    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onChange(I)V

    .line 5027
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    .line 5028
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastX:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeX:I

    .line 5029
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastY:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeY:I

    .line 5030
    iget-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v0, v4

    iget-wide v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    .end local v4           #eventTime:J
    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKeyTime:J

    .line 5031
    iput v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 5032
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    goto :goto_4

    .line 5054
    .end local v7           #continueLongPress:Z
    .restart local v4       #eventTime:J
    .restart local v6       #action:I
    .restart local p2
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5055
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5056
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5057
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    if-ne v9, v0, :cond_13

    .line 5058
    iget-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    iget-wide v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    .end local v6           #action:I
    sub-long v6, v4, v6

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    .line 5066
    :goto_5
    iget-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    iget-wide v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKeyTime:J

    cmp-long v0, v0, v6

    if-gez v0, :cond_10

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 5067
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 5068
    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeX:I

    .line 5069
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastCodeY:I

    .line 5071
    :cond_10
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showPreview(I)V

    .line 5072
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyIndices:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 5075
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOnScreen:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    if-nez v0, :cond_11

    .line 5076
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->detectAndSendKey(IIIJ)V

    .line 5079
    :cond_11
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    if-nez p2, :cond_12

    .line 5082
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setOneTimeShift(Z)V

    .line 5083
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 5084
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setShiftPressed(Z)V

    .line 5085
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateAll()V

    .line 5088
    :cond_12
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    goto/16 :goto_2

    .line 5060
    .restart local v6       #action:I
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->resetMultiTap()V

    .line 5061
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKey:I

    .line 5062
    iget-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    add-long/2addr v0, v4

    iget-wide v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastMoveTime:J

    .end local v6           #action:I
    sub-long/2addr v0, v6

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastKeyTime:J

    .line 5063
    iput v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 5064
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyTime:J

    goto :goto_5

    .line 4977
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 1468
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 1470
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1471
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 30
    .parameter "me"

    .prologue
    .line 4742
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v21

    .line 4743
    .local v21, crntPointCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v19

    .line 4744
    .local v19, action:I
    const/16 v26, 0x0

    .line 4745
    .local v26, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    .line 4747
    .local v4, now:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingLeft()I

    move-result v7

    sub-int v27, v6, v7

    .line 4748
    .local v27, touchX:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mVerticalCorrection:I

    move v7, v0

    add-int/2addr v6, v7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPaddingTop()I

    move-result v7

    sub-int v28, v6, v7

    .line 4750
    .local v28, touchY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v24

    .line 4752
    .local v24, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Landroid/inputmethodservice/Keyboard$Key;

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/inputmethodservice/Keyboard$Key;

    .line 4754
    .local v25, mKeys:[Landroid/inputmethodservice/Keyboard$Key;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    move/from16 v2, v28

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyIndices(II[I)I

    move-result v23

    .line 4756
    .local v23, keyIndex:I
    const/4 v6, -0x1

    move/from16 v0, v23

    move v1, v6

    if-eq v0, v1, :cond_9

    aget-object v6, v25, v23

    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    move/from16 v20, v6

    .line 4758
    .local v20, code:I
    :goto_0
    const/4 v6, 0x1

    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_2

    .line 4759
    const/4 v6, -0x1

    move/from16 v0, v20

    move v1, v6

    if-ne v0, v1, :cond_1

    .line 4760
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->IsOneTimeShift()Z

    move-result v6

    if-nez v6, :cond_0

    .line 4761
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setOneTimeShift(Z)V

    .line 4762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 4764
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setShiftPressed(Z)V

    .line 4767
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 4770
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    const/4 v6, 0x2

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_3

    .line 4772
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setOneTimeShift(Z)V

    .line 4782
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerCount:I

    move v6, v0

    move/from16 v0, v21

    move v1, v6

    if-eq v0, v1, :cond_f

    .line 4783
    const/4 v6, 0x1

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_e

    .line 4784
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    move v6, v0

    if-eqz v6, :cond_a

    .line 4785
    const/4 v6, 0x1

    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_4

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    .line 4786
    :cond_4
    const/16 v26, 0x1

    .line 4859
    :cond_5
    :goto_1
    const/4 v6, 0x2

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_8

    .line 4860
    const/4 v6, 0x5

    move/from16 v0, v19

    move v1, v6

    if-eq v0, v1, :cond_6

    const/16 v6, 0x105

    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_17

    .line 4862
    :cond_6
    const/4 v9, 0x0

    .line 4863
    .local v9, x:F
    const/4 v10, 0x0

    .line 4864
    .local v10, y:F
    const/4 v6, 0x5

    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_15

    .line 4865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerCount:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    move v6, v0

    if-nez v6, :cond_7

    .line 4867
    const/4 v8, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .end local v9           #x:F
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .end local v10           #y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v29

    .line 4869
    .local v29, up:Landroid/view/MotionEvent;
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 4870
    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->recycle()V

    .line 4873
    .end local v29           #up:Landroid/view/MotionEvent;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 4874
    .restart local v9       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 4875
    .restart local v10       #y:F
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    .line 4889
    :goto_2
    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v22

    .line 4891
    .local v22, down:Landroid/view/MotionEvent;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 4892
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->recycle()V

    .line 4919
    .end local v9           #x:F
    .end local v10           #y:F
    .end local v22           #down:Landroid/view/MotionEvent;
    :cond_8
    :goto_3
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerCount:I

    .line 4921
    return v26

    .line 4756
    .end local v20           #code:I
    :cond_9
    const/4 v6, 0x0

    move/from16 v20, v6

    goto/16 :goto_0

    .line 4787
    .restart local v20       #code:I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    move v6, v0

    if-eqz v6, :cond_c

    .line 4789
    const/4 v6, 0x1

    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_b

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    .line 4790
    :cond_b
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 4793
    :cond_c
    if-nez v19, :cond_d

    .line 4794
    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v22

    .line 4796
    .restart local v22       #down:Landroid/view/MotionEvent;
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 4797
    invoke-virtual/range {v22 .. v22}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_1

    .line 4800
    .end local v22           #down:Landroid/view/MotionEvent;
    :cond_d
    const/4 v6, 0x1

    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_5

    .line 4801
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    goto/16 :goto_1

    .line 4805
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    move v6, v0

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    move v6, v0

    if-nez v6, :cond_5

    .line 4809
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerX:F

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerY:F

    move v10, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v29

    .line 4811
    .restart local v29       #up:Landroid/view/MotionEvent;
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 4812
    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->recycle()V

    .line 4816
    const/4 v6, -0x1

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_5

    const/4 v6, -0x5

    move/from16 v0, v20

    move v1, v6

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v6

    if-nez v6, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 4819
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setOneTimeShift(Z)V

    .line 4820
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 4821
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setShiftPressed(Z)V

    .line 4822
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateAll()V

    goto/16 :goto_1

    .line 4827
    .end local v29           #up:Landroid/view/MotionEvent;
    :cond_f
    const/4 v6, 0x1

    move/from16 v0, v21

    move v1, v6

    if-ne v0, v1, :cond_14

    .line 4828
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    move v6, v0

    if-eqz v6, :cond_11

    .line 4829
    const/4 v6, 0x1

    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_10

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    .line 4830
    :cond_10
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 4831
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    move v6, v0

    if-eqz v6, :cond_13

    .line 4832
    const/4 v6, 0x1

    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_12

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    .line 4833
    :cond_12
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 4835
    :cond_13
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 4836
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerX:F

    .line 4837
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerY:F

    goto/16 :goto_1

    .line 4855
    :cond_14
    const/16 v26, 0x1

    goto/16 :goto_1

    .line 4877
    .restart local v9       #x:F
    .restart local v10       #y:F
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOldPointerCount:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    move v6, v0

    if-nez v6, :cond_16

    .line 4879
    const/4 v8, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .end local v9           #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .end local v10           #y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    move-wide v6, v4

    invoke-static/range {v4 .. v11}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v29

    .line 4881
    .restart local v29       #up:Landroid/view/MotionEvent;
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 4882
    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->recycle()V

    .line 4885
    .end local v29           #up:Landroid/view/MotionEvent;
    :cond_16
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 4886
    .restart local v9       #x:F
    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 4887
    .restart local v10       #y:F
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    goto/16 :goto_2

    .line 4893
    .end local v9           #x:F
    .end local v10           #y:F
    :cond_17
    const/4 v6, 0x6

    move/from16 v0, v19

    move v1, v6

    if-eq v0, v1, :cond_18

    const/16 v6, 0x106

    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_8

    .line 4895
    :cond_18
    const/4 v6, 0x6

    move/from16 v0, v19

    move v1, v6

    if-ne v0, v1, :cond_1a

    .line 4896
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    move v6, v0

    if-eqz v6, :cond_19

    .line 4897
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent1:Z

    .line 4898
    const/16 v26, 0x1

    goto/16 :goto_3

    .line 4900
    :cond_19
    const/4 v15, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v18

    move-wide v11, v4

    move-wide v13, v4

    invoke-static/range {v11 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v29

    .line 4902
    .restart local v29       #up:Landroid/view/MotionEvent;
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 4903
    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_3

    .line 4906
    .end local v29           #up:Landroid/view/MotionEvent;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    move v6, v0

    if-eqz v6, :cond_1b

    .line 4907
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIgnoreEvent2:Z

    .line 4908
    const/16 v26, 0x1

    goto/16 :goto_3

    .line 4910
    :cond_1b
    const/4 v15, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v18

    move-wide v11, v4

    move-wide v13, v4

    invoke-static/range {v11 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v29

    .line 4912
    .restart local v29       #up:Landroid/view/MotionEvent;
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->onModifiedTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v26

    .line 4913
    invoke-virtual/range {v29 .. v29}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_3
.end method

.method popupMiniKeyboard()Z
    .locals 3

    .prologue
    .line 4104
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v1}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 4105
    .local v0, popupKey:Landroid/inputmethodservice/Keyboard$Key;
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->popupLongPressKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v1

    return v1
.end method

.method public removeActionPopup()V
    .locals 1

    .prologue
    .line 7627
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 7628
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 7630
    :cond_0
    return-void
.end method

.method public removeAllMsg()V
    .locals 2

    .prologue
    .line 5112
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5113
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5114
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5115
    return-void
.end method

.method repeatKey()Z
    .locals 8

    .prologue
    .line 5097
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v7

    .line 5099
    .local v7, keys:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-boolean v0, v0, Landroid/inputmethodservice/Keyboard$Key;->repeatable:Z

    if-nez v0, :cond_1

    .line 5101
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5102
    const/4 v0, 0x0

    .line 5108
    :goto_0
    return v0

    .line 5105
    :cond_1
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mRepeatKeyIndex:I

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/Keyboard$Key;

    .line 5106
    .local v6, key:Landroid/inputmethodservice/Keyboard$Key;
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    iget v2, v6, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v3, v6, Landroid/inputmethodservice/Keyboard$Key;->y:I

    iget-wide v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->detectAndSendKey(IIIJ)V

    .line 5107
    const/4 v7, 0x0

    .line 5108
    const/4 v0, 0x1

    goto :goto_0
.end method

.method resetMultiTap()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5171
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastSentIndex:I

    .line 5172
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTapCount:I

    .line 5173
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mLastTapTime:J

    .line 5174
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mInMultiTap:Z

    .line 5175
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mTaping:Z

    .line 5176
    return-void
.end method

.method public saveSymbolHistoryToPreference()V
    .locals 7

    .prologue
    const/16 v6, 0x14

    .line 3451
    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    .line 3463
    .end local p0
    :goto_0
    return-void

    .line 3454
    .restart local p0
    :cond_0
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 3455
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3456
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_1

    move v2, v6

    .line 3457
    .local v2, itemCount:I
    :goto_1
    const-string v4, ""

    .line 3458
    .local v4, temp:Ljava/lang/String;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 3459
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3458
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3456
    .end local v1           #i:I
    .end local v2           #itemCount:I
    .end local v4           #temp:Ljava/lang/String;
    .restart local p0
    :cond_1
    sget-object v5, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSymbolHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v2, v5

    goto :goto_1

    .line 3461
    .end local p0
    .restart local v1       #i:I
    .restart local v2       #itemCount:I
    .restart local v4       #temp:Ljava/lang/String;
    :cond_2
    const-string v5, "usersymbollist"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3462
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public setIsDomainAllKeyboard(Z)V
    .locals 0
    .parameter "isDonainAll"

    .prologue
    .line 7554
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsDomailAllKeyboard:Z

    .line 7555
    return-void
.end method

.method public setIsEmoticonsKeyboard(Z)V
    .locals 0
    .parameter "isEmo"

    .prologue
    .line 7557
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsEmoticonsKeyboard:Z

    .line 7558
    return-void
.end method

.method public setIsMiniKeyboard(Z)V
    .locals 0
    .parameter "isMini"

    .prologue
    .line 7538
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    .line 7539
    return-void
.end method

.method public setIsModeChangeMiniKeyboard(Z)V
    .locals 0
    .parameter "isMini"

    .prologue
    .line 7542
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsModeChangeMiniKeyboard:Z

    .line 7543
    return-void
.end method

.method public setIsSymbolsKeyboard(Z)V
    .locals 0
    .parameter "isSym"

    .prologue
    .line 7561
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsSymbolsKeyboard:Z

    .line 7562
    return-void
.end method

.method public setIsUmlautMiniKeyboard(Z)V
    .locals 0
    .parameter "isUmlaut"

    .prologue
    .line 8046
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsUmlautMiniKeyboard:Z

    .line 8047
    return-void
.end method

.method public setIsVerticalMiniKeyboard(Z)V
    .locals 0
    .parameter "setIsVertical"

    .prologue
    .line 7565
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsVerticalKeyboard:Z

    .line 7566
    return-void
.end method

.method public setKeyLongPressed(Z)V
    .locals 0
    .parameter "keyLongPressed"

    .prologue
    .line 5205
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyLongPressed:Z

    .line 5206
    return-void
.end method

.method public setKeyboard(Landroid/inputmethodservice/Keyboard;)V
    .locals 3
    .parameter "keyboard"

    .prologue
    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1070
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 1071
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->showPreview(I)V

    .line 1073
    :cond_0
    if-nez p1, :cond_1

    .line 1074
    const-string v0, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AxT9KeyboardView.setKeyboard("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :goto_0
    return-void

    .line 1079
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->removeAllMsg()V

    .line 1080
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    .line 1082
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->updateActionPopup()V

    .line 1084
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->requestLayout()V

    .line 1086
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    .line 1087
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKey:I

    .line 1089
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v0, :cond_2

    .line 1090
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeypadBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1094
    :cond_2
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardChanged:Z

    .line 1098
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1101
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->computeProximityThreshold(Landroid/inputmethodservice/Keyboard;)V

    .line 1105
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mAbortKey:Z

    .line 1107
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentWwwDotIndex:I

    .line 1108
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentDotCoDotLocaleIndex:I

    .line 1109
    iput v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    .line 1110
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getCurrentSpaceKeyIndex()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSpaceKeyIndex:I

    goto :goto_0
.end method

.method public setOnKeyboardActionListener(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1050
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    .line 1051
    return-void
.end method

.method public setOneTimeShift(Z)V
    .locals 0
    .parameter "isOneTime"

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsOneTimeShift:Z

    .line 548
    return-void
.end method

.method public setPopupOffset(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1183
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOffsetX:I

    .line 1184
    iput p2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOffsetY:I

    .line 1185
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1188
    :cond_0
    return-void
.end method

.method public setPopupParent(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 1179
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupParent:Landroid/view/View;

    .line 1180
    return-void
.end method

.method public setPreviewEnabled(Z)V
    .locals 0
    .parameter "previewEnabled"

    .prologue
    .line 1162
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShowPreview:Z

    .line 1163
    return-void
.end method

.method public setShiftPressed(Z)V
    .locals 0
    .parameter "isPressed"

    .prologue
    .line 535
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsShiftedPressed:Z

    .line 536
    return-void
.end method

.method public setShifted(Z)Z
    .locals 1
    .parameter "shifted"

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/Keyboard;->setShifted(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateAll()V

    .line 1136
    const/4 v0, 0x1

    .line 1139
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showActionPopup()V
    .locals 7

    .prologue
    const/4 v5, 0x5

    const/4 v6, 0x0

    .line 7597
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getAction()I

    move-result v0

    .line 7598
    .local v0, action:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCustomExtractViewEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isPopupMenuShown()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->hasAction()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    if-ne v0, v5, :cond_2

    :cond_0
    const/4 v3, 0x1

    move v1, v3

    .line 7606
    .local v1, show:Z
    :goto_0
    if-nez v1, :cond_3

    .line 7624
    :cond_1
    :goto_1
    return-void

    .end local v1           #show:Z
    :cond_2
    move v1, v6

    .line 7598
    goto :goto_0

    .line 7608
    .restart local v1       #show:Z
    :cond_3
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    if-nez v3, :cond_4

    .line 7609
    const-string v3, "AxT9IME"

    const-string v4, "showActionPopup: Action Popup is not initialized"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7610
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->initActionPopup()V

    .line 7613
    :cond_4
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    .line 7614
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v3, -0xa4

    move v2, v3

    .line 7615
    .local v2, y:I
    :goto_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7616
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopupY:I

    if-eq v3, v2, :cond_5

    .line 7617
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v5

    invoke-virtual {v3, v6, v2, v4, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 7622
    :cond_5
    :goto_3
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopupY:I

    goto :goto_1

    .line 7614
    .end local v2           #y:I
    :cond_6
    const/16 v3, -0x72

    move v2, v3

    goto :goto_2

    .line 7620
    .restart local v2       #y:I
    :cond_7
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v3, p0, v5, v6, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3
.end method

.method showPreview(I)V
    .locals 14
    .parameter

    .prologue
    const-wide/16 v11, 0x3c

    const/4 v7, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 3527
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    .line 3528
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 3531
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    .line 3534
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboard:Landroid/inputmethodservice/Keyboard;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v3

    .line 3536
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-eq v1, v0, :cond_1

    .line 3537
    if-eq v1, v7, :cond_0

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v8

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 3538
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-ne v4, v7, :cond_4

    move v4, v10

    :goto_0
    invoke-virtual {v0, v4}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 3539
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateKey(I)V

    .line 3541
    :cond_0
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v7, :cond_1

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v8

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-le v0, v4, :cond_1

    .line 3542
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    invoke-virtual {v0}, Landroid/inputmethodservice/Keyboard$Key;->onPressed()V

    .line 3543
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->invalidateKey(I)V

    .line 3547
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    if-ltz p1, :cond_2d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2d

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v8

    const/16 v4, 0x20

    if-ne v0, v4, :cond_2d

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    move v4, v10

    .line 3558
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPreviewEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mIsMiniKeyboard:Z

    if-eqz v0, :cond_5

    .line 3559
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3815
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v4, v8

    .line 3538
    goto :goto_0

    .line 3562
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "show_password"

    invoke-static {v0, v5, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v10

    .line 3564
    :goto_3
    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-eq v5, v7, :cond_6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    iget v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-le v5, v6, :cond_6

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v8

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPortraitSoftkeys(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v8

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isLandscapeQwertySoftkeys(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v8

    const/16 v5, 0x20

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSpaceLanguageChangeEnable()Z

    move-result v0

    if-nez v0, :cond_8

    .line 3571
    :cond_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_7
    move v0, v8

    .line 3562
    goto :goto_3

    .line 3575
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isShown()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3576
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 3580
    :cond_9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    .line 3581
    if-nez v4, :cond_c

    .line 3582
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isPreviewEnabled()Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v5

    if-ne v5, v9, :cond_b

    const/4 v5, 0x3

    if-eq v0, v5, :cond_b

    if-eq v0, v9, :cond_b

    const/4 v5, 0x4

    if-eq v0, v5, :cond_b

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-eq v0, v10, :cond_b

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v5, 0x5

    if-eq v0, v5, :cond_b

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v5, 0x6

    if-ne v0, v5, :cond_a

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->misLandscapeMode:Z

    if-eqz v0, :cond_b

    :cond_a
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v7, :cond_b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-le v0, v5, :cond_b

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v8

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isThisKeyEnable(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 3598
    :cond_b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 3603
    :cond_c
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v7, :cond_d

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-le v0, v5, :cond_d

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v8

    const/16 v5, -0xff

    if-ne v0, v5, :cond_d

    .line 3605
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 3613
    :cond_d
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-eq v0, v7, :cond_f

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-le v0, v5, :cond_f

    .line 3614
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isNeededPopupKeyboard(Landroid/inputmethodservice/Keyboard$Key;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    if-nez v0, :cond_e

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-nez v0, :cond_e

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mUmlautMgr:Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-short v6, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v8

    invoke-virtual {v5, v6, v0}, Lcom/sec/android/inputmethod/axt9/AxT9UmlautMgr;->getKeyUmlautString(SI)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    const/16 v5, 0xa

    if-gt v0, v5, :cond_12

    .line 3619
    :cond_e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_MORE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3631
    :cond_f
    :goto_4
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    if-ne v1, v0, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->isKeyLongPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_10
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mShowPreview:Z

    if-eqz v0, :cond_3

    .line 3632
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 3633
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3634
    if-ne p1, v7, :cond_11

    .line 3635
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3638
    :cond_11
    if-eq p1, v7, :cond_3

    .line 3639
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    .line 3642
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v8

    const/16 v3, -0xff

    if-ne v1, v3, :cond_14

    .line 3643
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3644
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->dismiss()V

    goto/16 :goto_2

    .line 3620
    :cond_12
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mCurrentKeyIndex:I

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v0, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v0, v8

    const/16 v5, -0x67

    if-ne v0, v5, :cond_13

    .line 3621
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_MORE:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 3623
    :cond_13
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_BG_NORMAL:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 3649
    :cond_14
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getKeyPreviewIcon(Landroid/inputmethodservice/Keyboard$Key;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3650
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v5, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v5, v5, v8

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3651
    const/4 v1, 0x0

    .line 3653
    :cond_15
    const/4 v3, 0x0

    .line 3654
    if-eqz v4, :cond_2c

    .line 3655
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-ne v1, v9, :cond_1c

    .line 3656
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 3657
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3658
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020150

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3672
    :goto_5
    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    const/4 v5, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-direct {v3, p0, v5, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;Landroid/graphics/drawable/Drawable;II)V

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSlidingLocaleDrawable:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$SlidingLocaleDrawable;

    .line 3673
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-virtual {v3, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object v13, v3

    move-object v3, v1

    move-object v1, v13

    .line 3676
    :goto_6
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPreviewText(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 3678
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3679
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3680
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3682
    if-eqz v3, :cond_1d

    .line 3683
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3684
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v3, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3685
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3686
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3687
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 3688
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3689
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3690
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3691
    if-eqz v4, :cond_16

    .line 3692
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3693
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3695
    :cond_16
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/ImageView;->measure(II)V

    .line 3751
    :cond_17
    :goto_7
    if-nez v3, :cond_23

    if-eqz v5, :cond_18

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->EMPTY_KEY_LABEL:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3752
    :cond_18
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v11, v12}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 3660
    :cond_19
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f020151

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_5

    .line 3663
    :cond_1a
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isVoiceInputEnable()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3664
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0201d2

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_5

    .line 3666
    :cond_1b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0201d3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_5

    .line 3670
    :cond_1c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0200ac

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto/16 :goto_5

    .line 3698
    :cond_1d
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3700
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3701
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3702
    const/4 v4, -0x2

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3703
    const/4 v4, -0x2

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3704
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3706
    const-string v1, "gjpqy@J"

    .line 3707
    iget-object v4, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->adjustCase(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3708
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3709
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3711
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1e

    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->label:Ljava/lang/CharSequence;

    const-string v4, "j"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3712
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QYPGJ_PREVIEW_PADDING_BOTTOM:I

    mul-int/lit8 v1, v1, 0x2

    .line 3716
    :goto_8
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 3717
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    const/16 v4, 0x51

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 3723
    :goto_9
    if-eqz v5, :cond_17

    .line 3725
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3726
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mFaceBold:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3728
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-direct {p0, v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getPreviewLabelSize(Landroid/inputmethodservice/Keyboard$Key;Ljava/lang/CharSequence;)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3732
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v8

    const/16 v4, -0xca

    if-ne v1, v4, :cond_20

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-nez v1, :cond_20

    .line 3734
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    int-to-float v4, v4

    const/high16 v6, 0x3fc0

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_7

    .line 3714
    :cond_1e
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->QYPGJ_PREVIEW_PADDING_BOTTOM:I

    mul-int/lit8 v1, v1, 0x3

    goto :goto_8

    .line 3719
    :cond_1f
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewPortExtraText:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3720
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_9

    .line 3735
    :cond_20
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v8

    const/16 v4, -0x6f

    if-ne v1, v4, :cond_21

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v1

    if-ne v1, v9, :cond_21

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v1

    if-nez v1, :cond_21

    .line 3738
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    int-to-float v4, v4

    const/high16 v6, 0x3fc0

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_7

    .line 3739
    :cond_21
    if-eqz v5, :cond_22

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v10, :cond_22

    .line 3741
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_7

    .line 3742
    :cond_22
    iget-object v1, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v1, v1, v8

    const/16 v4, -0x66

    if-ne v1, v4, :cond_17

    .line 3744
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    iget v4, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_7

    .line 3755
    :cond_23
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/widget/LinearLayout;->measure(II)V

    .line 3758
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    .line 3759
    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_HEIGHT:I

    .line 3761
    if-eqz v3, :cond_26

    .line 3762
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v1

    .line 3778
    :cond_24
    :goto_a
    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3779
    invoke-virtual {v2, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3781
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewCentered:Z

    if-nez v3, :cond_2a

    .line 3782
    iget v3, v0, Landroid/inputmethodservice/Keyboard$Key;->x:I

    iget v5, v0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    sub-int v5, v1, v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewX:I

    .line 3783
    iget v0, v0, Landroid/inputmethodservice/Keyboard$Key;->y:I

    sub-int/2addr v0, v4

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewOffset:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewY:I

    .line 3789
    :goto_b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 3790
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    if-nez v0, :cond_25

    .line 3791
    new-array v0, v9, [I

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    .line 3792
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->getLocationInWindow([I)V

    .line 3793
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    aget v3, v0, v8

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOffsetX:I

    add-int/2addr v3, v5

    aput v3, v0, v8

    .line 3794
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    aget v3, v0, v10

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mMiniKeyboardOffsetY:I

    add-int/2addr v3, v5

    aput v3, v0, v10

    .line 3799
    :cond_25
    invoke-virtual {v2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3800
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewX:I

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    aget v3, v3, v8

    add-int/2addr v0, v3

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewY:I

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    aget v5, v5, v10

    add-int/2addr v3, v5

    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 3811
    :goto_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v10, p1, v8}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 3764
    :cond_26
    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v8

    const/16 v6, -0xca

    if-ne v3, v6, :cond_27

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-nez v3, :cond_27

    .line 3766
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    int-to-float v1, v1

    const/high16 v3, 0x3fc0

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_a

    .line 3767
    :cond_27
    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v8

    const/16 v6, -0x6f

    if-ne v3, v6, :cond_28

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    if-ne v3, v9, :cond_28

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isLandscapeMode()Z

    move-result v3

    if-nez v3, :cond_28

    .line 3770
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->PREVIEW_WIDTH:I

    int-to-float v1, v1

    const/high16 v3, 0x3fc0

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto/16 :goto_a

    .line 3771
    :cond_28
    if-eqz v5, :cond_29

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-le v3, v10, :cond_29

    .line 3772
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto/16 :goto_a

    .line 3774
    :cond_29
    iget-object v3, v0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v3, v3, v8

    const/16 v5, -0x66

    if-ne v3, v5, :cond_24

    .line 3775
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreviewMainText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    goto/16 :goto_a

    .line 3786
    :cond_2a
    const/16 v0, 0xa0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewX:I

    .line 3787
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPreview:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewY:I

    goto/16 :goto_b

    .line 3805
    :cond_2b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupParent:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewX:I

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    aget v3, v3, v8

    add-int/2addr v1, v3

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mPopupPreviewY:I

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mOffsetInWindow:[I

    aget v4, v4, v10

    add-int/2addr v3, v4

    invoke-virtual {v2, v0, v8, v1, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto/16 :goto_c

    :cond_2c
    move-object v13, v3

    move-object v3, v1

    move-object v1, v13

    goto/16 :goto_6

    :cond_2d
    move v4, v8

    goto/16 :goto_1
.end method

.method protected swipeDown()V
    .locals 1

    .prologue
    .line 5130
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->swipeDown()V

    .line 5131
    return-void
.end method

.method protected swipeLeft()V
    .locals 1

    .prologue
    .line 5122
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->swipeLeft()V

    .line 5123
    return-void
.end method

.method protected swipeRight()V
    .locals 1

    .prologue
    .line 5118
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->swipeRight()V

    .line 5119
    return-void
.end method

.method protected swipeUp()V
    .locals 1

    .prologue
    .line 5126
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mKeyboardActionListener:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;

    invoke-interface {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;->swipeUp()V

    .line 5127
    return-void
.end method

.method public updateActionPopup()V
    .locals 2

    .prologue
    .line 7585
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 7586
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView;->mActionButton:Landroid/widget/Button;

    const v1, 0x7f0a0023

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 7594
    :cond_0
    return-void
.end method
