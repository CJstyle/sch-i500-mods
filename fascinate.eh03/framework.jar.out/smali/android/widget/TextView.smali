.class public Landroid/widget/TextView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextView$2;,
        Landroid/widget/TextView$CursorControllerMenu;,
        Landroid/widget/TextView$SelectionModifierCursorController;,
        Landroid/widget/TextView$InsertionPointCursorController;,
        Landroid/widget/TextView$HandleView;,
        Landroid/widget/TextView$CursorController;,
        Landroid/widget/TextView$MenuHandler;,
        Landroid/widget/TextView$BufferType;,
        Landroid/widget/TextView$Blink;,
        Landroid/widget/TextView$CommitSelectionReceiver;,
        Landroid/widget/TextView$ChangeWatcher;,
        Landroid/widget/TextView$Marquee;,
        Landroid/widget/TextView$ErrorPopup;,
        Landroid/widget/TextView$CharWrapper;,
        Landroid/widget/TextView$SavedState;,
        Landroid/widget/TextView$OnEditorActionListener;,
        Landroid/widget/TextView$InputMethodState;,
        Landroid/widget/TextView$InputContentType;,
        Landroid/widget/TextView$Drawables;
    }
.end annotation


# static fields
.field private static final ANIMATED_SCROLL_GAP:I = 0xfa

.field private static final BLINK:I = 0x1f4

.field static final DEBUG_EXTRACT:Z = false

.field private static final DECIMAL:I = 0x4

.field private static final EMPTY_SPANNED:Landroid/text/Spanned; = null

.field private static final EMS:I = 0x1

.field static final END_HANDLE_VISIBLE:I = 0x1

.field static final ERROR:I = 0x270f

.field static final EXTRACT_NOTHING:I = -0x2

.field static final EXTRACT_UNKNOWN:I = -0x1

.field public static final HIDE_CURSOR_CONTROLLERS:I = 0x16

.field private static final ID_ADD_TO_DICTIONARY:I = 0x102002a

.field private static final ID_CLIP_BOARD:I = 0x102018b

.field private static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_URL:I = 0x1020023

.field private static final ID_CUT:I = 0x1020020

.field private static final ID_PASTE:I = 0x1020022

.field private static final ID_SELECT_ALL:I = 0x102001f

.field private static final ID_START_SELECTING_TEXT:I = 0x1020028

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field static final INSERT_HANDLE_ONLY:I = 0x3

.field private static final LINES:I = 0x1

.field static final LOG_TAG:Ljava/lang/String; = "TextView"

.field private static final MONOSPACE:I = 0x3

.field private static final NO_FILTERS:[Landroid/text/InputFilter; = null

.field private static final PIXELS:I = 0x2

.field private static final PREDRAW_DONE:I = 0x2

.field private static final PREDRAW_NOT_REGISTERED:I = 0x0

.field private static final PREDRAW_PENDING:I = 0x1

.field private static PRIORITY:I = 0x0

.field private static final SANS:I = 0x1

.field private static final SERIF:I = 0x2

.field private static final SIGNED:I = 0x2

.field static final START_HANDLE_VISIBLE:I = 0x2

.field public static final STOP_TEXT_SELECTION_MODE:I = 0xb

.field private static final UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics; = null

.field private static final VERY_WIDE:I = 0x4000

.field private static mContextMenu:Landroid/view/ContextMenu;

.field private static sCursorControllerTempRect:Landroid/graphics/Rect;

.field private static final sTempRect:Landroid/graphics/RectF;


# instance fields
.field private mAutoLinkMask:I

.field private mBlink:Landroid/widget/TextView$Blink;

.field private mBoring:Landroid/text/BoringLayout$Metrics;

.field private mBufferType:Landroid/widget/TextView$BufferType;

.field private mByPassInputType:Z

.field private mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

.field private mCharWrapper:Landroid/widget/TextView$CharWrapper;

.field private mContextMenuTriggeredByKey:Z

.field private mCreatedWithASelection:Z

.field private mCurHintTextColor:I

.field private mCurTextColor:I

.field private mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

.field private mCursorVisible:Z

.field private mDPadCenterIsDown:Z

.field private mDesiredHeightAtMeasure:I

.field private mDispatchTemporaryDetach:Z

.field private mDrawables:Landroid/widget/TextView$Drawables;

.field private mEatTouchRelease:Z

.field private mEditableFactory:Landroid/text/Editable$Factory;

.field private mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private mEnableSelection:Z

.field private mEnterKeyIsDown:Z

.field private mError:Ljava/lang/CharSequence;

.field private mErrorWasChanged:Z

.field private mFilters:[Landroid/text/InputFilter;

.field private mFreezesText:Z

.field private mFrozenWithFocus:Z

.field private mGravity:I

.field private mHighlightColor:I

.field private final mHighlightPaint:Landroid/graphics/Paint;

.field private mHighlightPath:Landroid/graphics/Path;

.field private mHighlightPathBogus:Z

.field private mHint:Ljava/lang/CharSequence;

.field private mHintBoring:Landroid/text/BoringLayout$Metrics;

.field private mHintLayout:Landroid/text/Layout;

.field private mHintTextColor:Landroid/content/res/ColorStateList;

.field private mHorizontallyScrolling:Z

.field private mInBatchEditControllers:Z

.field private mIncludePad:Z

.field private mInput:Landroid/text/method/KeyListener;

.field mInputContentType:Landroid/widget/TextView$InputContentType;

.field mInputMethodState:Landroid/widget/TextView$InputMethodState;

.field private mInputType:I

.field private mInsertionControllerEnabled:Z

.field private mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

.field private mIsCursorControllerOn:Z

.field private mIsIMEChangable:Z

.field private mIsInTextSelectionMode:Z

.field private mLastScroll:J

.field private mLayout:Landroid/text/Layout;

.field private mLinkTextColor:Landroid/content/res/ColorStateList;

.field private mLinksClickable:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/text/TextWatcher;",
            ">;"
        }
    .end annotation
.end field

.field public mLockCursorControllerMenu:Z

.field private mMarquee:Landroid/widget/TextView$Marquee;

.field private mMarqueeRepeatLimit:I

.field private mMaxMode:I

.field private mMaxWidth:I

.field private mMaxWidthMode:I

.field private mMaximum:I

.field private mMinMode:I

.field private mMinWidth:I

.field private mMinWidthMode:I

.field private mMinimum:I

.field private mMovement:Landroid/text/method/MovementMethod;

.field private mNoContextMenuOnUp:Z

.field private mOrientation:I

.field private mPopup:Landroid/widget/TextView$ErrorPopup;

.field private mPreDrawState:I

.field private mRestartMarquee:Z

.field private mSavedHintLayout:Landroid/text/BoringLayout;

.field private mSavedLayout:Landroid/text/BoringLayout;

.field private mScrolled:Z

.field private mScroller:Landroid/widget/Scroller;

.field private mSelectAllOnFocus:Z

.field mSelectHandleCenter:Landroid/graphics/drawable/Drawable;

.field mSelectHandleLeft:Landroid/graphics/drawable/Drawable;

.field mSelectHandleRight:Landroid/graphics/drawable/Drawable;

.field private mSelectionControllerEnabled:Z

.field private mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

.field private mSelectionMoved:Z

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShowCursor:J

.field private mShowErrorAfterAttach:Z

.field private mSingleLine:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannableFactory:Landroid/text/Spannable$Factory;

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTemporaryDetach:Z

.field private mText:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private final mTextPaint:Landroid/text/TextPaint;

.field mTextSelectHandleLeftRes:I

.field mTextSelectHandleRes:I

.field mTextSelectHandleRightRes:I

.field private mTouchFocusSelected:Z

.field private mTransformation:Landroid/text/method/TransformationMethod;

.field private mTransformed:Ljava/lang/CharSequence;

.field private mUserSetTextScaleX:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 214
    const/16 v1, 0x64

    sput v1, Landroid/widget/TextView;->PRIORITY:I

    .line 344
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 345
    .local v0, p:Landroid/graphics/Paint;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 347
    const-string v1, "H"

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 5287
    new-instance v1, Landroid/text/BoringLayout$Metrics;

    invoke-direct {v1}, Landroid/text/BoringLayout$Metrics;-><init>()V

    sput-object v1, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 8995
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    .line 9029
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    sput-object v1, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    .line 9045
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/InputFilter;

    sput-object v1, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    .line 9047
    new-instance v1, Landroid/text/SpannedString;

    const-string v2, ""

    invoke-direct {v1, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    sput-object v1, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    .line 9869
    const/4 v1, 0x0

    sput-object v1, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 371
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 372
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 376
    const v0, 0x1010084

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 377
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 54
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 383
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    const/16 v51, 0x2

    move/from16 v0, v51

    new-array v0, v0, [I

    move-object/from16 v51, v0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTempCoords:[I

    .line 229
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEatTouchRelease:Z

    .line 230
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mScrolled:Z

    .line 232
    invoke-static {}, Landroid/text/Editable$Factory;->getInstance()Landroid/text/Editable$Factory;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 233
    invoke-static {}, Landroid/text/Spannable$Factory;->getInstance()Landroid/text/Spannable$Factory;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 240
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 242
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 261
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsIMEChangable:Z

    .line 291
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 293
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 294
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 299
    const/16 v51, 0x3

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 335
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 337
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mNoContextMenuOnUp:Z

    .line 8956
    sget-object v51, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 8958
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 8968
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 8974
    const v51, -0x33b8a6db

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mHighlightColor:I

    .line 8979
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mCursorVisible:Z

    .line 8987
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8990
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 8991
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 8992
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    .line 8997
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 8999
    const/16 v51, 0x33

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mGravity:I

    .line 9003
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    .line 9005
    const/high16 v51, 0x3f80

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    .line 9006
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    .line 9012
    const v51, 0x7fffffff

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaximum:I

    .line 9013
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxMode:I

    .line 9014
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinimum:I

    .line 9015
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinMode:I

    .line 9017
    const v51, 0x7fffffff

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidth:I

    .line 9018
    const/16 v51, 0x2

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 9019
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidth:I

    .line 9020
    const/16 v51, 0x2

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mMinWidthMode:I

    .line 9023
    const/16 v51, -0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 9024
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIncludePad:Z

    .line 9028
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 9038
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 9046
    sget-object v51, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 9070
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    .line 9078
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLockCursorControllerMenu:Z

    .line 9791
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOrientation:I

    .line 9816
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mByPassInputType:Z

    .line 9824
    const/16 v51, 0x0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mEnableSelection:Z

    .line 384
    const-string v51, ""

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 386
    new-instance v51, Landroid/text/TextPaint;

    const/16 v52, 0x1

    invoke-direct/range {v51 .. v52}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v52, v0

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 395
    new-instance v51, Landroid/graphics/Paint;

    const/16 v52, 0x1

    invoke-direct/range {v51 .. v52}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object/from16 v51, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v52, v0

    invoke-virtual/range {v51 .. v52}, Landroid/graphics/Paint;->setCompatibilityScaling(F)V

    .line 399
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 400
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 402
    sget-object v51, Lcom/android/internal/R$styleable;->TextView:[I

    const/16 v52, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move/from16 v3, p3

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 406
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v46, 0x0

    .line 407
    .local v46, textColorHighlight:I
    const/16 v45, 0x0

    .line 408
    .local v45, textColor:Landroid/content/res/ColorStateList;
    const/16 v47, 0x0

    .line 409
    .local v47, textColorHint:Landroid/content/res/ColorStateList;
    const/16 v48, 0x0

    .line 410
    .local v48, textColorLink:Landroid/content/res/ColorStateList;
    const/16 v49, 0xf

    .line 411
    .local v49, textSize:I
    const/16 v50, -0x1

    .line 412
    .local v50, typefaceIndex:I
    const/16 v43, -0x1

    .line 420
    .local v43, styleIndex:I
    const/4 v7, 0x0

    .line 421
    .local v7, appearance:Landroid/content/res/TypedArray;
    const/16 v51, 0x1

    const/16 v52, -0x1

    move-object v0, v5

    move/from16 v1, v51

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 422
    .local v6, ap:I
    const/16 v51, -0x1

    move v0, v6

    move/from16 v1, v51

    if-eq v0, v1, :cond_0

    .line 423
    sget-object v51, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 427
    :cond_0
    if-eqz v7, :cond_2

    .line 428
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 429
    .local v35, n:I
    const/16 v30, 0x0

    .local v30, i:I
    :goto_0
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_1

    .line 430
    move-object v0, v7

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 432
    .local v8, attr:I
    packed-switch v8, :pswitch_data_0

    .line 429
    :goto_1
    add-int/lit8 v30, v30, 0x1

    goto :goto_0

    .line 434
    :pswitch_0
    move-object v0, v7

    move v1, v8

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v46

    .line 435
    goto :goto_1

    .line 438
    :pswitch_1
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v45

    .line 439
    goto :goto_1

    .line 442
    :pswitch_2
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v47

    .line 443
    goto :goto_1

    .line 446
    :pswitch_3
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v48

    .line 447
    goto :goto_1

    .line 450
    :pswitch_4
    move-object v0, v7

    move v1, v8

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v49

    .line 451
    goto :goto_1

    .line 454
    :pswitch_5
    const/16 v51, -0x1

    move-object v0, v7

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v50

    .line 455
    goto :goto_1

    .line 458
    :pswitch_6
    const/16 v51, -0x1

    move-object v0, v7

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v43

    goto :goto_1

    .line 463
    .end local v8           #attr:I
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    .end local v30           #i:I
    .end local v35           #n:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDefaultEditable()Z

    move-result v25

    .line 467
    .local v25, editable:Z
    const/16 v31, 0x0

    .line 468
    .local v31, inputMethod:Ljava/lang/CharSequence;
    const/16 v36, 0x0

    .line 469
    .local v36, numeric:I
    const/16 v16, 0x0

    .line 470
    .local v16, digits:Ljava/lang/CharSequence;
    const/16 v38, 0x0

    .line 471
    .local v38, phone:Z
    const/4 v10, 0x0

    .line 472
    .local v10, autotext:Z
    const/4 v9, -0x1

    .line 473
    .local v9, autocap:I
    const/4 v12, 0x0

    .line 474
    .local v12, buffertype:I
    const/16 v40, 0x0

    .line 475
    .local v40, selectallonfocus:Z
    const/16 v18, 0x0

    .local v18, drawableLeft:Landroid/graphics/drawable/Drawable;
    const/16 v21, 0x0

    .local v21, drawableTop:Landroid/graphics/drawable/Drawable;
    const/16 v20, 0x0

    .line 476
    .local v20, drawableRight:Landroid/graphics/drawable/Drawable;
    const/16 v17, 0x0

    .line 477
    .local v17, drawableBottom:Landroid/graphics/drawable/Drawable;
    const/16 v19, 0x0

    .line 478
    .local v19, drawablePadding:I
    const/16 v26, -0x1

    .line 479
    .local v26, ellipsize:I
    const/16 v42, 0x0

    .line 480
    .local v42, singleLine:Z
    const/16 v34, -0x1

    .line 481
    .local v34, maxlength:I
    const-string v44, ""

    .line 482
    .local v44, text:Ljava/lang/CharSequence;
    const/16 v29, 0x0

    .line 483
    .local v29, hint:Ljava/lang/CharSequence;
    const/16 v41, 0x0

    .line 484
    .local v41, shadowcolor:I
    const/16 v22, 0x0

    .local v22, dx:F
    const/16 v23, 0x0

    .local v23, dy:F
    const/16 v39, 0x0

    .line 485
    .local v39, r:F
    const/16 v37, 0x0

    .line 486
    .local v37, password:Z
    const/16 v32, 0x0

    .line 488
    .local v32, inputType:I
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 489
    .restart local v35       #n:I
    const/16 v30, 0x0

    .restart local v30       #i:I
    :goto_2
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_7

    .line 490
    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 492
    .restart local v8       #attr:I
    packed-switch v8, :pswitch_data_1

    .line 489
    :cond_3
    :goto_3
    :pswitch_7
    add-int/lit8 v30, v30, 0x1

    goto :goto_2

    .line 494
    :pswitch_8
    move-object v0, v5

    move v1, v8

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v25

    .line 495
    goto :goto_3

    .line 498
    :pswitch_9
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v31

    .line 499
    goto :goto_3

    .line 502
    :pswitch_a
    move-object v0, v5

    move v1, v8

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v36

    .line 503
    goto :goto_3

    .line 506
    :pswitch_b
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .line 507
    goto :goto_3

    .line 510
    :pswitch_c
    move-object v0, v5

    move v1, v8

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v38

    .line 511
    goto :goto_3

    .line 514
    :pswitch_d
    invoke-virtual {v5, v8, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    .line 515
    goto :goto_3

    .line 518
    :pswitch_e
    invoke-virtual {v5, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 519
    goto :goto_3

    .line 522
    :pswitch_f
    invoke-virtual {v5, v8, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v12

    .line 523
    goto :goto_3

    .line 526
    :pswitch_10
    move-object v0, v5

    move v1, v8

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v40

    .line 527
    goto :goto_3

    .line 530
    :pswitch_11
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mAutoLinkMask:I

    goto :goto_3

    .line 534
    :pswitch_12
    const/16 v51, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mLinksClickable:Z

    goto :goto_3

    .line 538
    :pswitch_13
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 539
    goto :goto_3

    .line 542
    :pswitch_14
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 543
    goto :goto_3

    .line 546
    :pswitch_15
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 547
    goto :goto_3

    .line 550
    :pswitch_16
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 551
    goto :goto_3

    .line 554
    :pswitch_17
    move-object v0, v5

    move v1, v8

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v19

    .line 555
    goto :goto_3

    .line 558
    :pswitch_18
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/16 :goto_3

    .line 562
    :pswitch_19
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxHeight(I)V

    goto/16 :goto_3

    .line 566
    :pswitch_1a
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    goto/16 :goto_3

    .line 570
    :pswitch_1b
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    goto/16 :goto_3

    .line 574
    :pswitch_1c
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinLines(I)V

    goto/16 :goto_3

    .line 578
    :pswitch_1d
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    goto/16 :goto_3

    .line 582
    :pswitch_1e
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxEms(I)V

    goto/16 :goto_3

    .line 586
    :pswitch_1f
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_3

    .line 590
    :pswitch_20
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEms(I)V

    goto/16 :goto_3

    .line 594
    :pswitch_21
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    goto/16 :goto_3

    .line 598
    :pswitch_22
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinEms(I)V

    goto/16 :goto_3

    .line 602
    :pswitch_23
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    goto/16 :goto_3

    .line 606
    :pswitch_24
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_3

    .line 610
    :pswitch_25
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v29

    .line 611
    goto/16 :goto_3

    .line 614
    :pswitch_26
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v44

    .line 615
    goto/16 :goto_3

    .line 618
    :pswitch_27
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-eqz v51, :cond_3

    .line 619
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    goto/16 :goto_3

    .line 624
    :pswitch_28
    move-object v0, v5

    move v1, v8

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v42

    .line 625
    goto/16 :goto_3

    .line 628
    :pswitch_29
    move-object v0, v5

    move v1, v8

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v26

    .line 629
    goto/16 :goto_3

    .line 632
    :pswitch_2a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V

    goto/16 :goto_3

    .line 636
    :pswitch_2b
    const/16 v51, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-nez v51, :cond_3

    .line 637
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    goto/16 :goto_3

    .line 642
    :pswitch_2c
    const/16 v51, 0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    if-nez v51, :cond_3

    .line 643
    const/16 v51, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    goto/16 :goto_3

    .line 648
    :pswitch_2d
    const/16 v51, -0x1

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v34

    .line 649
    goto/16 :goto_3

    .line 652
    :pswitch_2e
    const/high16 v51, 0x3f80

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextScaleX(F)V

    goto/16 :goto_3

    .line 656
    :pswitch_2f
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mFreezesText:Z

    goto/16 :goto_3

    .line 660
    :pswitch_30
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v41

    .line 661
    goto/16 :goto_3

    .line 664
    :pswitch_31
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v22

    .line 665
    goto/16 :goto_3

    .line 668
    :pswitch_32
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v23

    .line 669
    goto/16 :goto_3

    .line 672
    :pswitch_33
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v39

    .line 673
    goto/16 :goto_3

    .line 676
    :pswitch_34
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v51

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 680
    :pswitch_35
    move-object v0, v5

    move v1, v8

    move/from16 v2, v46

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v46

    .line 681
    goto/16 :goto_3

    .line 684
    :pswitch_36
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v45

    .line 685
    goto/16 :goto_3

    .line 688
    :pswitch_37
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v47

    .line 689
    goto/16 :goto_3

    .line 692
    :pswitch_38
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v48

    .line 693
    goto/16 :goto_3

    .line 696
    :pswitch_39
    move-object v0, v5

    move v1, v8

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v49

    .line 697
    goto/16 :goto_3

    .line 700
    :pswitch_3a
    move-object v0, v5

    move v1, v8

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v50

    .line 701
    goto/16 :goto_3

    .line 704
    :pswitch_3b
    move-object v0, v5

    move v1, v8

    move/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v43

    .line 705
    goto/16 :goto_3

    .line 708
    :pswitch_3c
    move-object v0, v5

    move v1, v8

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v37

    .line 709
    goto/16 :goto_3

    .line 712
    :pswitch_3d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v51, v0

    move/from16 v0, v51

    float-to-int v0, v0

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v51

    move/from16 v0, v51

    int-to-float v0, v0

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingAdd:F

    goto/16 :goto_3

    .line 716
    :pswitch_3e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mSpacingMult:F

    goto/16 :goto_3

    .line 720
    :pswitch_3f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v32

    .line 721
    goto/16 :goto_3

    .line 724
    :pswitch_40
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    if-nez v51, :cond_4

    .line 725
    new-instance v51, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 727
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    move/from16 v52, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    goto/16 :goto_3

    .line 732
    :pswitch_41
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    if-nez v51, :cond_5

    .line 733
    new-instance v51, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 735
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    iput-object v0, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 739
    :pswitch_42
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    if-nez v51, :cond_6

    .line 740
    new-instance v51, Landroid/widget/TextView$InputContentType;

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 742
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v51, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    move/from16 v52, v0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v52

    move/from16 v0, v52

    move-object/from16 v1, v51

    iput v0, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    goto/16 :goto_3

    .line 747
    :pswitch_43
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPrivateImeOptions(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 752
    :pswitch_44
    const/16 v51, 0x0

    :try_start_0
    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputExtras(I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_3

    .line 753
    :catch_0
    move-exception v51

    move-object/from16 v24, v51

    .line 754
    .local v24, e:Lorg/xmlpull/v1/XmlPullParserException;
    const-string v51, "TextView"

    const-string v52, "Failure reading input extras"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 755
    .end local v24           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_1
    move-exception v51

    move-object/from16 v24, v51

    .line 756
    .local v24, e:Ljava/io/IOException;
    const-string v51, "TextView"

    const-string v52, "Failure reading input extras"

    move-object/from16 v0, v51

    move-object/from16 v1, v52

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 761
    .end local v24           #e:Ljava/io/IOException;
    :pswitch_45
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleLeftRes:I

    goto/16 :goto_3

    .line 765
    :pswitch_46
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRightRes:I

    goto/16 :goto_3

    .line 769
    :pswitch_47
    const/16 v51, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v51

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mTextSelectHandleRes:I

    goto/16 :goto_3

    .line 773
    .end local v8           #attr:I
    :cond_7
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 775
    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    .line 777
    .local v11, bufferType:Landroid/widget/TextView$BufferType;
    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xfff

    move/from16 v51, v0

    const/16 v52, 0x81

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_8

    .line 779
    const/16 v37, 0x1

    .line 782
    :cond_8
    if-eqz v31, :cond_13

    .line 786
    :try_start_1
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v13

    .line 792
    .local v13, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .end local v5           #a:Landroid/content/res/TypedArray;
    check-cast v5, Landroid/text/method/KeyListener;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4

    .line 799
    if-eqz v32, :cond_12

    move/from16 v51, v32

    :goto_4
    :try_start_3
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I
    :try_end_3
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_3 .. :try_end_3} :catch_5

    .line 885
    .end local v13           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_9
    :goto_5
    if-eqz v37, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    and-int/lit8 v51, v51, 0xf

    const/16 v52, 0x1

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_a

    .line 887
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move/from16 v0, v51

    and-int/lit16 v0, v0, -0xff1

    move/from16 v51, v0

    move/from16 v0, v51

    or-int/lit16 v0, v0, 0x80

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 891
    :cond_a
    if-eqz v40, :cond_b

    .line 892
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 894
    sget-object v51, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    move-object v0, v11

    move-object/from16 v1, v51

    if-ne v0, v1, :cond_b

    .line 895
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 898
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 900
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 902
    if-eqz v42, :cond_c

    .line 903
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v51, v0

    if-nez v51, :cond_c

    if-gez v26, :cond_c

    .line 906
    const/16 v26, 0x3

    .line 910
    :cond_c
    packed-switch v26, :pswitch_data_2

    .line 926
    :goto_6
    if-eqz v45, :cond_22

    move-object/from16 v51, v45

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 927
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 928
    move-object/from16 v0, p0

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 929
    if-eqz v46, :cond_d

    .line 930
    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 932
    :cond_d
    move/from16 v0, v49

    int-to-float v0, v0

    move/from16 v51, v0

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 934
    if-eqz v37, :cond_23

    .line 935
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v51

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 936
    const/16 v50, 0x1

    .line 944
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v50

    move/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 946
    if-eqz v41, :cond_f

    .line 947
    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 950
    :cond_f
    if-ltz v34, :cond_24

    .line 951
    const/16 v51, 0x1

    move/from16 v0, v51

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v51, v0

    const/16 v52, 0x0

    new-instance v53, Landroid/text/InputFilter$LengthFilter;

    move-object/from16 v0, v53

    move/from16 v1, v34

    invoke-direct {v0, v1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v53, v51, v52

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 956
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v44

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 957
    if-eqz v29, :cond_10

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 964
    :cond_10
    sget-object v51, Lcom/android/internal/R$styleable;->View:[I

    const/16 v52, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v51

    move/from16 v3, p3

    move/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 968
    .restart local v5       #a:Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object/from16 v51, v0

    if-nez v51, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v51, v0

    if-eqz v51, :cond_25

    :cond_11
    const/16 v51, 0x1

    move/from16 v28, v51

    .line 969
    .local v28, focusable:Z
    :goto_a
    move/from16 v15, v28

    .line 970
    .local v15, clickable:Z
    move/from16 v33, v28

    .line 972
    .local v33, longClickable:Z
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v35

    .line 973
    const/16 v30, 0x0

    :goto_b
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_26

    .line 974
    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 976
    .restart local v8       #attr:I
    sparse-switch v8, :sswitch_data_0

    .line 973
    :goto_c
    add-int/lit8 v30, v30, 0x1

    goto :goto_b

    .line 787
    .end local v8           #attr:I
    .end local v15           #clickable:Z
    .end local v28           #focusable:Z
    .end local v33           #longClickable:Z
    :catch_2
    move-exception v51

    move-object/from16 v27, v51

    .line 788
    .local v27, ex:Ljava/lang/ClassNotFoundException;
    new-instance v51, Ljava/lang/RuntimeException;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v51

    .line 793
    .end local v5           #a:Landroid/content/res/TypedArray;
    .end local v27           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v13       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_3
    move-exception v51

    move-object/from16 v27, v51

    .line 794
    .local v27, ex:Ljava/lang/InstantiationException;
    new-instance v51, Ljava/lang/RuntimeException;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v51

    .line 795
    .end local v27           #ex:Ljava/lang/InstantiationException;
    :catch_4
    move-exception v51

    move-object/from16 v27, v51

    .line 796
    .local v27, ex:Ljava/lang/IllegalAccessException;
    new-instance v51, Ljava/lang/RuntimeException;

    move-object/from16 v0, v51

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v51

    .line 799
    .end local v27           #ex:Ljava/lang/IllegalAccessException;
    :cond_12
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object/from16 v51, v0

    invoke-interface/range {v51 .. v51}, Landroid/text/method/KeyListener;->getInputType()I
    :try_end_4
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_4 .. :try_end_4} :catch_5

    move-result v51

    goto/16 :goto_4

    .line 802
    :catch_5
    move-exception v51

    move-object/from16 v24, v51

    .line 803
    .local v24, e:Ljava/lang/IncompatibleClassChangeError;
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_5

    .line 805
    .end local v13           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v24           #e:Ljava/lang/IncompatibleClassChangeError;
    .restart local v5       #a:Landroid/content/res/TypedArray;
    :cond_13
    if-eqz v16, :cond_15

    .line 806
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v51

    invoke-static/range {v51 .. v51}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 810
    if-eqz v32, :cond_14

    move/from16 v51, v32

    :goto_d
    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_5

    :cond_14
    const/16 v51, 0x1

    goto :goto_d

    .line 812
    :cond_15
    if-eqz v32, :cond_17

    .line 813
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v51

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 814
    const v51, 0x2000f

    and-int v51, v51, v32

    const v52, 0x20001

    move/from16 v0, v51

    move/from16 v1, v52

    if-eq v0, v1, :cond_16

    const/16 v51, 0x1

    move/from16 v42, v51

    :goto_e
    goto/16 :goto_5

    :cond_16
    const/16 v51, 0x0

    move/from16 v42, v51

    goto :goto_e

    .line 818
    :cond_17
    if-eqz v38, :cond_18

    .line 819
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 820
    const/16 v32, 0x3

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_5

    .line 821
    :cond_18
    if-eqz v36, :cond_1d

    .line 822
    and-int/lit8 v51, v36, 0x2

    if-eqz v51, :cond_1b

    const/16 v51, 0x1

    :goto_f
    and-int/lit8 v52, v36, 0x4

    if-eqz v52, :cond_1c

    const/16 v52, 0x1

    :goto_10
    invoke-static/range {v51 .. v52}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 824
    const/16 v32, 0x2

    .line 825
    and-int/lit8 v51, v36, 0x2

    if-eqz v51, :cond_19

    .line 826
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x1000

    move/from16 v32, v0

    .line 828
    :cond_19
    and-int/lit8 v51, v36, 0x4

    if-eqz v51, :cond_1a

    .line 829
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x2000

    move/from16 v32, v0

    .line 831
    :cond_1a
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_5

    .line 822
    :cond_1b
    const/16 v51, 0x0

    goto :goto_f

    :cond_1c
    const/16 v52, 0x0

    goto :goto_10

    .line 832
    :cond_1d
    if-nez v10, :cond_1e

    const/16 v51, -0x1

    move v0, v9

    move/from16 v1, v51

    if-eq v0, v1, :cond_20

    .line 835
    :cond_1e
    const/16 v32, 0x1

    .line 836
    if-nez v42, :cond_1f

    .line 837
    const/high16 v51, 0x2

    or-int v32, v32, v51

    .line 840
    :cond_1f
    packed-switch v9, :pswitch_data_3

    .line 857
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .line 861
    .local v14, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_11
    invoke-static {v10, v14}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 862
    move/from16 v0, v32

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_5

    .line 842
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_48
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .line 843
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x4000

    move/from16 v32, v0

    .line 844
    goto :goto_11

    .line 847
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_49
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 848
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x2000

    move/from16 v32, v0

    .line 849
    goto :goto_11

    .line 852
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :pswitch_4a
    sget-object v14, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 853
    .restart local v14       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    move/from16 v0, v32

    or-int/lit16 v0, v0, 0x1000

    move/from16 v32, v0

    .line 854
    goto :goto_11

    .line 863
    .end local v14           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_20
    if-eqz v25, :cond_21

    .line 864
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v51

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 865
    const/16 v51, 0x1

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    .line 866
    if-nez v42, :cond_9

    .line 867
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    const/high16 v52, 0x2

    or-int v51, v51, v52

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mInputType:I

    goto/16 :goto_5

    .line 870
    :cond_21
    const/16 v51, 0x0

    move-object/from16 v0, v51

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 872
    packed-switch v12, :pswitch_data_4

    goto/16 :goto_5

    .line 874
    :pswitch_4b
    sget-object v11, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    .line 875
    goto/16 :goto_5

    .line 877
    :pswitch_4c
    sget-object v11, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    .line 878
    goto/16 :goto_5

    .line 880
    :pswitch_4d
    sget-object v11, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    goto/16 :goto_5

    .line 912
    .end local v5           #a:Landroid/content/res/TypedArray;
    :pswitch_4e
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_6

    .line 915
    :pswitch_4f
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_6

    .line 918
    :pswitch_50
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_6

    .line 921
    :pswitch_51
    const/16 v51, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 922
    sget-object v51, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto/16 :goto_6

    .line 926
    :cond_22
    const/high16 v51, -0x100

    invoke-static/range {v51 .. v51}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v51

    goto/16 :goto_7

    .line 937
    :cond_23
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mInputType:I

    move/from16 v51, v0

    move/from16 v0, v51

    and-int/lit16 v0, v0, 0xfff

    move/from16 v51, v0

    const/16 v52, 0x81

    move/from16 v0, v51

    move/from16 v1, v52

    if-ne v0, v1, :cond_e

    .line 941
    const/16 v50, 0x1

    goto/16 :goto_8

    .line 953
    :cond_24
    sget-object v51, Landroid/widget/TextView;->NO_FILTERS:[Landroid/text/InputFilter;

    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    goto/16 :goto_9

    .line 968
    .restart local v5       #a:Landroid/content/res/TypedArray;
    :cond_25
    const/16 v51, 0x0

    move/from16 v28, v51

    goto/16 :goto_a

    .line 978
    .restart local v8       #attr:I
    .restart local v15       #clickable:Z
    .restart local v28       #focusable:Z
    .restart local v33       #longClickable:Z
    :sswitch_0
    move-object v0, v5

    move v1, v8

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v28

    .line 979
    goto/16 :goto_c

    .line 982
    :sswitch_1
    invoke-virtual {v5, v8, v15}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 983
    goto/16 :goto_c

    .line 986
    :sswitch_2
    move-object v0, v5

    move v1, v8

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v33

    goto/16 :goto_c

    .line 990
    .end local v8           #attr:I
    :cond_26
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 992
    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 993
    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 994
    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 996
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 999
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v51

    invoke-virtual/range {v51 .. v51}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v51

    move-object/from16 v0, v51

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v51, v0

    move/from16 v0, v51

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mOrientation:I

    .line 1001
    return-void

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 492
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_34
        :pswitch_7
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_36
        :pswitch_35
        :pswitch_37
        :pswitch_38
        :pswitch_29
        :pswitch_24
        :pswitch_11
        :pswitch_12
        :pswitch_1f
        :pswitch_19
        :pswitch_23
        :pswitch_1d
        :pswitch_f
        :pswitch_26
        :pswitch_25
        :pswitch_2e
        :pswitch_2c
        :pswitch_18
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1e
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_27
        :pswitch_3c
        :pswitch_28
        :pswitch_10
        :pswitch_2b
        :pswitch_2d
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_9
        :pswitch_e
        :pswitch_d
        :pswitch_8
        :pswitch_2f
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_15
        :pswitch_17
        :pswitch_3d
        :pswitch_3e
        :pswitch_2a
        :pswitch_3f
        :pswitch_43
        :pswitch_44
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_45
        :pswitch_46
        :pswitch_47
    .end packed-switch

    .line 910
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
    .end packed-switch

    .line 976
    :sswitch_data_0
    .sparse-switch
        0x12 -> :sswitch_0
        0x1d -> :sswitch_1
        0x1e -> :sswitch_2
    .end sparse-switch

    .line 840
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_48
        :pswitch_49
        :pswitch_4a
    .end packed-switch

    .line 872
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
    .end packed-switch
.end method

.method static synthetic access$1000(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursorPath()V

    return-void
.end method

.method static synthetic access$1500(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/TextView;)Landroid/widget/TextView$CursorControllerMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/widget/TextView;Landroid/widget/TextView$CursorControllerMenu;)Landroid/widget/TextView$CursorControllerMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    iput-object p1, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    return-object p1
.end method

.method static synthetic access$2000(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Landroid/widget/TextView;->sCursorControllerTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/TextView;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    return v0
.end method

.method static synthetic access$2700(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return v0
.end method

.method static synthetic access$2702(Landroid/widget/TextView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return p1
.end method

.method static synthetic access$2800(Landroid/widget/TextView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    return-void
.end method

.method static synthetic access$2900(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    return v0
.end method

.method static synthetic access$300(Landroid/widget/TextView;)Landroid/text/Layout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TextView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/TextView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/widget/TextView;Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/TextView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method private applySingleLine(ZZ)V
    .locals 1
    .parameter "singleLine"
    .parameter "applyTransformation"

    .prologue
    const/4 v0, 0x1

    .line 6031
    iput-boolean p1, p0, Landroid/widget/TextView;->mSingleLine:Z

    .line 6032
    if-eqz p1, :cond_1

    .line 6033
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 6034
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 6035
    if-eqz p2, :cond_0

    .line 6036
    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 6046
    :cond_0
    :goto_0
    return-void

    .line 6040
    :cond_1
    const v0, 0x7fffffff

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 6041
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 6042
    if-eqz p2, :cond_0

    .line 6043
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method private assumeLayout()V
    .locals 7

    .prologue
    .line 5024
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int v1, v0, v3

    .line 5026
    .local v1, width:I
    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 5027
    const/4 v1, 0x0

    .line 5030
    :cond_0
    move v2, v1

    .line 5032
    .local v2, physicalWidth:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    if-eqz v0, :cond_1

    .line 5033
    const/16 v1, 0x4000

    .line 5036
    :cond_1
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    const/4 v6, 0x0

    move-object v0, p0

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5038
    return-void
.end method

.method private bringTextIntoView()Z
    .locals 14

    .prologue
    const/16 v13, 0x50

    const/4 v12, 0x1

    .line 5614
    const/4 v5, 0x0

    .line 5615
    .local v5, line:I
    iget v10, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    if-ne v10, v13, :cond_0

    .line 5616
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getLineCount()I

    move-result v10

    sub-int v5, v10, v12

    .line 5619
    :cond_0
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 5620
    .local v0, a:Landroid/text/Layout$Alignment;
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 5621
    .local v1, dir:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v11

    sub-int v2, v10, v11

    .line 5622
    .local v2, hspace:I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v11

    sub-int v9, v10, v11

    .line 5623
    .local v9, vspace:I
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 5627
    .local v3, ht:I
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne v0, v10, :cond_4

    .line 5633
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v4, v10

    .line 5634
    .local v4, left:I
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 5636
    .local v6, right:I
    sub-int v10, v6, v4

    if-ge v10, v2, :cond_2

    .line 5637
    add-int v10, v6, v4

    div-int/lit8 v10, v10, 0x2

    div-int/lit8 v11, v2, 0x2

    sub-int v7, v10, v11

    .line 5669
    .end local v4           #left:I
    .end local v6           #right:I
    .local v7, scrollx:I
    :goto_0
    if-ge v3, v9, :cond_8

    .line 5670
    const/4 v8, 0x0

    .line 5679
    .local v8, scrolly:I
    :goto_1
    iget v10, p0, Landroid/view/View;->mScrollX:I

    if-ne v7, v10, :cond_1

    iget v10, p0, Landroid/view/View;->mScrollY:I

    if-eq v8, v10, :cond_a

    .line 5680
    :cond_1
    invoke-virtual {p0, v7, v8}, Landroid/widget/TextView;->scrollTo(II)V

    move v10, v12

    .line 5683
    :goto_2
    return v10

    .line 5639
    .end local v7           #scrollx:I
    .end local v8           #scrolly:I
    .restart local v4       #left:I
    .restart local v6       #right:I
    :cond_2
    if-gez v1, :cond_3

    .line 5640
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_0

    .line 5642
    .end local v7           #scrollx:I
    :cond_3
    move v7, v4

    .restart local v7       #scrollx:I
    goto :goto_0

    .line 5645
    .end local v4           #left:I
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_4
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v10, :cond_6

    .line 5650
    if-gez v1, :cond_5

    .line 5651
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 5652
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .line 5653
    .restart local v7       #scrollx:I
    goto :goto_0

    .line 5654
    .end local v6           #right:I
    .end local v7           #scrollx:I
    :cond_5
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v7, v10

    .restart local v7       #scrollx:I
    goto :goto_0

    .line 5661
    .end local v7           #scrollx:I
    :cond_6
    if-gez v1, :cond_7

    .line 5662
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->floor(F)F

    move-result v10

    float-to-int v7, v10

    .restart local v7       #scrollx:I
    goto :goto_0

    .line 5664
    .end local v7           #scrollx:I
    :cond_7
    iget-object v10, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v10, v5}, Landroid/text/Layout;->getLineRight(I)F

    move-result v10

    invoke-static {v10}, Landroid/util/FloatMath;->ceil(F)F

    move-result v10

    float-to-int v6, v10

    .line 5665
    .restart local v6       #right:I
    sub-int v7, v6, v2

    .restart local v7       #scrollx:I
    goto :goto_0

    .line 5672
    .end local v6           #right:I
    :cond_8
    iget v10, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v10, v10, 0x70

    if-ne v10, v13, :cond_9

    .line 5673
    sub-int v8, v3, v9

    .restart local v8       #scrolly:I
    goto :goto_1

    .line 5675
    .end local v8           #scrolly:I
    :cond_9
    const/4 v8, 0x0

    .restart local v8       #scrolly:I
    goto :goto_1

    .line 5683
    :cond_a
    const/4 v10, 0x0

    goto :goto_2
.end method

.method private canCopy()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7304
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 7312
    :goto_0
    return v0

    .line 7308
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7309
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7312
    goto :goto_0
.end method

.method private canCut()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7290
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 7300
    :goto_0
    return v0

    .line 7294
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7295
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 7296
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7300
    goto :goto_0
.end method

.method private canMarquee()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6129
    iget v1, p0, Landroid/view/View;->mRight:I

    iget v2, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    sub-int v0, v1, v2

    .line 6130
    .local v0, width:I
    if-lez v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private canPaste()Z
    .locals 2

    .prologue
    .line 7316
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/ClipboardManager;

    invoke-virtual {p0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private canSelectText()Z
    .locals 1

    .prologue
    .line 7275
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForRelayout()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, -0x2

    .line 5560
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidthMode:I

    if-ne v0, v3, :cond_6

    iget v0, p0, Landroid/widget/TextView;->mMaxWidth:I

    iget v3, p0, Landroid/widget/TextView;->mMinWidth:I

    if-ne v0, v3, :cond_6

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_6

    :cond_1
    iget v0, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_6

    .line 5566
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v7

    .line 5567
    .local v7, oldht:I
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 5568
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_2

    move v2, v6

    .line 5575
    .local v2, hintWant:I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5579
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v0, v3, :cond_5

    .line 5581
    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v8, :cond_3

    iget-object v0, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_3

    .line 5583
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5608
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :goto_1
    return-void

    .line 5568
    .restart local v1       #want:I
    .restart local v7       #oldht:I
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    move v2, v0

    goto :goto_0

    .line 5589
    .restart local v2       #hintWant:I
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    if-ne v0, v7, :cond_5

    .line 5591
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 5598
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5599
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1

    .line 5604
    .end local v1           #want:I
    .end local v2           #hintWant:I
    .end local v7           #oldht:I
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5605
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5606
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_1
.end method

.method private checkForResize()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 5519
    const/4 v1, 0x0

    .line 5521
    .local v1, sizeChanged:Z
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_1

    .line 5523
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v3, :cond_0

    .line 5524
    const/4 v1, 0x1

    .line 5525
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5529
    :cond_0
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v2, v3, :cond_3

    .line 5530
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 5532
    .local v0, desiredHeight:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 5533
    const/4 v1, 0x1

    .line 5546
    .end local v0           #desiredHeight:I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 5547
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5550
    :cond_2
    return-void

    .line 5535
    :cond_3
    iget-object v2, p0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 5536
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-ltz v2, :cond_1

    .line 5537
    invoke-direct {p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v0

    .line 5539
    .restart local v0       #desiredHeight:I
    iget v2, p0, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    if-eq v0, v2, :cond_1

    .line 5540
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V
    .locals 12
    .parameter "pop"
    .parameter "text"
    .parameter "tv"

    .prologue
    .line 3518
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    add-int v11, v1, v2

    .line 3519
    .local v11, wid:I
    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    add-int v8, v1, v2

    .line 3525
    .local v8, ht:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int v3, v1, v11

    .line 3526
    .local v3, cap:I
    if-gez v3, :cond_0

    .line 3527
    const/16 v3, 0xc8

    .line 3530
    :cond_0
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 3532
    .local v0, l:Landroid/text/Layout;
    const/4 v10, 0x0

    .line 3533
    .local v10, max:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    if-ge v9, v1, :cond_1

    .line 3534
    invoke-virtual {v0, v9}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 3533
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 3540
    :cond_1
    float-to-double v1, v10

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/2addr v1, v11

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3541
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v1, v8

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 3542
    return-void
.end method

.method private compressText(F)Z
    .locals 7
    .parameter "width"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 5232
    cmpl-float v2, p1, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-ne v2, v6, :cond_0

    iget-boolean v2, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 5234
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    .line 5235
    .local v1, textWidth:F
    add-float v2, v1, v3

    sub-float/2addr v2, p1

    div-float v0, v2, p1

    .line 5236
    .local v0, overflow:F
    cmpl-float v2, v0, v4

    if-lez v2, :cond_0

    const v2, 0x3d8f5c29

    cmpg-float v2, v0, v2

    if-gtz v2, :cond_0

    .line 5237
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    sub-float/2addr v3, v0

    const v4, 0x3ba3d70a

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 5238
    new-instance v2, Landroid/widget/TextView$1;

    invoke-direct {v2, p0}, Landroid/widget/TextView$1;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    move v2, v6

    .line 5247
    .end local v0           #overflow:F
    .end local v1           #textWidth:F
    :goto_0
    return v2

    :cond_0
    move v2, v5

    goto :goto_0
.end method

.method private convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 5928
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v0

    .line 5929
    .local v0, horizontalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 5930
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 5932
    invoke-direct {p0}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v1

    .line 5933
    .local v1, verticalOffset:I
    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 5934
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 5935
    return-void
.end method

.method private static desired(Landroid/text/Layout;)I
    .locals 7
    .parameter "layout"

    .prologue
    const/4 v6, 0x1

    .line 5251
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 5252
    .local v2, n:I
    invoke-virtual {p0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 5253
    .local v3, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 5258
    .local v1, max:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sub-int v4, v2, v6

    if-ge v0, v4, :cond_1

    .line 5259
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_0

    .line 5260
    const/4 v4, -0x1

    .line 5267
    :goto_1
    return v4

    .line 5258
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5263
    :cond_1
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 5264
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 5263
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 5267
    :cond_2
    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v4

    float-to-int v4, v4

    goto :goto_1
.end method

.method private doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I
    .locals 8
    .parameter "keyCode"
    .parameter "event"
    .parameter "otherEvent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 4431
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v5

    .line 4552
    :goto_0
    return v2

    .line 4435
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 4485
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_9

    .line 4492
    iput-boolean v5, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 4494
    const/4 v0, 0x1

    .line 4495
    .local v0, doDown:Z
    if-eqz p3, :cond_6

    .line 4497
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 4498
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p3}, Landroid/text/method/KeyListener;->onKeyOther(Landroid/view/View;Landroid/text/Editable;Landroid/view/KeyEvent;)Z

    move-result v1

    .line 4500
    .local v1, handled:Z
    iget-object v2, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v2, :cond_2

    .line 4501
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 4503
    :cond_2
    const/4 v0, 0x0

    .line 4504
    if-eqz v1, :cond_5

    .line 4511
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    move v2, v4

    .line 4505
    goto :goto_0

    .line 4437
    .end local v0           #doDown:Z
    .end local v1           #handled:Z
    :sswitch_0
    iput-boolean v6, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 4440
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 4446
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_3

    .line 4450
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v5, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4453
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v6, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    move v2, v4

    .line 4455
    goto :goto_0

    .line 4462
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_4
    move v2, v4

    .line 4464
    goto :goto_0

    .line 4470
    :sswitch_1
    iput-boolean v6, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 4471
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v5

    .line 4472
    goto :goto_0

    .line 4478
    :sswitch_2
    iget-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v2, :cond_1

    .line 4479
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    move v2, v4

    .line 4480
    goto :goto_0

    .line 4511
    .restart local v0       #doDown:Z
    :catchall_0
    move-exception v2

    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    throw v2

    .line 4507
    :catch_0
    move-exception v2

    .line 4511
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4515
    :cond_6
    if-eqz v0, :cond_9

    .line 4516
    invoke-virtual {p0}, Landroid/widget/TextView;->beginBatchEdit()V

    .line 4517
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4518
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4519
    iget-object v2, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v2, :cond_7

    .line 4520
    invoke-virtual {p0, v7, v7}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    move v2, v6

    .line 4522
    goto/16 :goto_0

    .line 4524
    :cond_8
    invoke-virtual {p0}, Landroid/widget/TextView;->endBatchEdit()V

    .line 4531
    .end local v0           #doDown:Z
    :cond_9
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_b

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_b

    .line 4532
    const/4 v0, 0x1

    .line 4533
    .restart local v0       #doDown:Z
    if-eqz p3, :cond_a

    .line 4535
    :try_start_1
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p3}, Landroid/text/method/MovementMethod;->onKeyOther(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 4537
    .restart local v1       #handled:Z
    const/4 v0, 0x0

    .line 4538
    if-eqz v1, :cond_a

    move v2, v4

    .line 4539
    goto/16 :goto_0

    .line 4541
    .end local v1           #handled:Z
    :catch_1
    move-exception v2

    .line 4546
    :cond_a
    if-eqz v0, :cond_b

    .line 4547
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4548
    const/4 v2, 0x2

    goto/16 :goto_0

    .end local v0           #doDown:Z
    :cond_b
    move v2, v5

    .line 4552
    goto/16 :goto_0

    .line 4435
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x17 -> :sswitch_1
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method private static extractRangeEndFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 7423
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    return v0
.end method

.method private static extractRangeStartFromLong(J)I
    .locals 2
    .parameter "range"

    .prologue
    .line 7419
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    return v0
.end method

.method private fixFocusableAndClickableSettings()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1213
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v0, :cond_1

    .line 1214
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1215
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1216
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 1222
    :goto_0
    return-void

    .line 1218
    :cond_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1219
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1220
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    goto :goto_0
.end method

.method private getBottomVerticalOffset(Z)I
    .locals 7
    .parameter "forceNormal"

    .prologue
    .line 3644
    const/4 v4, 0x0

    .line 3645
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 3647
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 3648
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 3649
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 3652
    :cond_0
    const/16 v5, 0x50

    if-eq v1, v5, :cond_1

    .line 3655
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_2

    .line 3656
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 3662
    .local v0, boxht:I
    :goto_0
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 3664
    .local v3, textht:I
    if-ge v3, v0, :cond_1

    .line 3665
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    .line 3666
    sub-int v4, v0, v3

    .line 3671
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_1
    :goto_1
    return v4

    .line 3659
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_0

    .line 3668
    .restart local v3       #textht:I
    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method private getDesiredHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 5455
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-direct {p0, v0, v3}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iget-object v2, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    invoke-direct {p0, v1, v2}, Landroid/widget/TextView;->getDesiredHeight(Landroid/text/Layout;Z)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getDesiredHeight(Landroid/text/Layout;Z)I
    .locals 7
    .parameter "layout"
    .parameter "cap"

    .prologue
    const/4 v6, 0x1

    .line 5461
    if-nez p1, :cond_0

    .line 5462
    const/4 v4, 0x0

    .line 5511
    :goto_0
    return v4

    .line 5465
    :cond_0
    invoke-virtual {p1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 5466
    .local v2, linecount:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    add-int v3, v4, v5

    .line 5467
    .local v3, pad:I
    invoke-virtual {p1, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 5469
    .local v0, desired:I
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 5470
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-eqz v1, :cond_1

    .line 5471
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5472
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5475
    :cond_1
    add-int/2addr v0, v3

    .line 5477
    iget v4, p0, Landroid/widget/TextView;->mMaxMode:I

    if-ne v4, v6, :cond_5

    .line 5482
    if-eqz p2, :cond_3

    .line 5483
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    if-le v2, v4, :cond_3

    .line 5484
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {p1, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-virtual {p1}, Landroid/text/Layout;->getBottomPadding()I

    move-result v5

    add-int v0, v4, v5

    .line 5487
    if-eqz v1, :cond_2

    .line 5488
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5489
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 5492
    :cond_2
    add-int/2addr v0, v3

    .line 5493
    iget v2, p0, Landroid/widget/TextView;->mMaximum:I

    .line 5500
    :cond_3
    :goto_1
    iget v4, p0, Landroid/widget/TextView;->mMinMode:I

    if-ne v4, v6, :cond_6

    .line 5501
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    if-ge v2, v4, :cond_4

    .line 5502
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    iget v5, p0, Landroid/widget/TextView;->mMinimum:I

    sub-int/2addr v5, v2

    mul-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 5509
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v4, v0

    .line 5511
    goto :goto_0

    .line 5497
    :cond_5
    iget v4, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 5505
    :cond_6
    iget v4, p0, Landroid/widget/TextView;->mMinimum:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2
.end method

.method private getErrorX()I
    .locals 5

    .prologue
    .line 3474
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 3476
    .local v1, scale:F
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3477
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v3}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    if-eqz v0, :cond_0

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    :goto_0
    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    const/high16 v3, 0x41c8

    mul-float/2addr v3, v1

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v3, v3

    add-int/2addr v2, v3

    return v2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getErrorY()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 3491
    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    sub-int v2, v3, v4

    .line 3494
    .local v2, vspace:I
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3495
    .local v0, dr:Landroid/widget/TextView$Drawables;
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    if-eqz v0, :cond_0

    iget v4, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_0
    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 3503
    .local v1, icontop:I
    if-eqz v0, :cond_1

    iget v3, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    :goto_1
    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    return v3

    .end local v1           #icontop:I
    :cond_0
    move v4, v5

    .line 3495
    goto :goto_0

    .restart local v1       #icontop:I
    :cond_1
    move v3, v5

    .line 3503
    goto :goto_1
.end method

.method private getInterestingRect(Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "r"
    .parameter "line"

    .prologue
    .line 5918
    invoke-direct {p0, p1}, Landroid/widget/TextView;->convertFromViewportToContentCoordinates(Landroid/graphics/Rect;)V

    .line 5923
    if-nez p2, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 5924
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ne p2, v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 5925
    :cond_1
    return-void
.end method

.method private getLastTapPosition()I
    .locals 4

    .prologue
    .line 6764
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_1

    .line 6765
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    check-cast v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v1}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v0

    .line 6767
    .local v0, lastTapPosition:I
    if-ltz v0, :cond_1

    .line 6769
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 6770
    const-string v1, "TextView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid tap focus position ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " vs "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6772
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :cond_0
    move v1, v0

    .line 6778
    .end local v0           #lastTapPosition:I
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getOffsetForHorizontal(II)I
    .locals 2
    .parameter "line"
    .parameter "x"

    .prologue
    .line 8838
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    .line 8840
    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 8841
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8842
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    add-int/2addr p2, v0

    .line 8843
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v0

    return v0
.end method

.method public static getTextColor(Landroid/content/Context;Landroid/content/res/TypedArray;I)I
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "def"

    .prologue
    .line 7230
    invoke-static {p0, p1}, Landroid/widget/TextView;->getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 7232
    .local v0, colors:Landroid/content/res/ColorStateList;
    if-nez v0, :cond_0

    move v1, p2

    .line 7235
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    goto :goto_0
.end method

.method public static getTextColors(Landroid/content/Context;Landroid/content/res/TypedArray;)Landroid/content/res/ColorStateList;
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    .line 7202
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 7205
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-nez v2, :cond_0

    .line 7206
    const/4 v3, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 7208
    .local v0, ap:I
    if-eq v0, v4, :cond_0

    .line 7210
    sget-object v3, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 7212
    .local v1, appearance:Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 7214
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 7218
    .end local v0           #ap:I
    .end local v1           #appearance:Landroid/content/res/TypedArray;
    :cond_0
    return-object v2
.end method

.method private getVerticalOffset(Z)I
    .locals 7
    .parameter "forceNormal"

    .prologue
    .line 3613
    const/4 v4, 0x0

    .line 3614
    .local v4, voffset:I
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 3616
    .local v1, gravity:I
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 3617
    .local v2, l:Landroid/text/Layout;
    if-nez p1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-eqz v5, :cond_0

    .line 3618
    iget-object v2, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 3621
    :cond_0
    const/16 v5, 0x30

    if-eq v1, v5, :cond_1

    .line 3624
    iget-object v5, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-ne v2, v5, :cond_2

    .line 3625
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 3631
    .local v0, boxht:I
    :goto_0
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v3

    .line 3633
    .local v3, textht:I
    if-ge v3, v0, :cond_1

    .line 3634
    const/16 v5, 0x50

    if-ne v1, v5, :cond_3

    .line 3635
    sub-int v4, v0, v3

    .line 3640
    .end local v0           #boxht:I
    .end local v3           #textht:I
    :cond_1
    :goto_1
    return v4

    .line 3628
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v6

    sub-int v0, v5, v6

    .restart local v0       #boxht:I
    goto :goto_0

    .line 3637
    .restart local v3       #textht:I
    :cond_3
    sub-int v5, v0, v3

    shr-int/lit8 v4, v5, 0x1

    goto :goto_1
.end method

.method private getWordForDictionary()Ljava/lang/String;
    .locals 7

    .prologue
    .line 7494
    iget-boolean v5, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    move v1, v5

    .line 7495
    .local v1, seedPosition:I
    :goto_0
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v3

    .line 7496
    .local v3, wordLimits:J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-ltz v5, :cond_1

    .line 7497
    invoke-static {v3, v4}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v2

    .line 7498
    .local v2, start:I
    invoke-static {v3, v4}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v0

    .line 7499
    .local v0, end:I
    iget-object v5, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v5, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 7501
    .end local v0           #end:I
    .end local v2           #start:I
    :goto_1
    return-object v5

    .line 7494
    .end local v1           #seedPosition:I
    .end local v3           #wordLimits:J
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v5

    move v1, v5

    goto :goto_0

    .line 7501
    .restart local v1       #seedPosition:I
    .restart local v3       #wordLimits:J
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getWordLimitsAt(I)J
    .locals 11
    .parameter "offset"

    .prologue
    .line 7337
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v4, v9, 0xf

    .line 7338
    .local v4, klass:I
    const/4 v9, 0x2

    if-eq v4, v9, :cond_0

    const/4 v9, 0x3

    if-eq v4, v9, :cond_0

    const/4 v9, 0x4

    if-ne v4, v9, :cond_1

    .line 7341
    :cond_0
    const-wide/16 v9, -0x1

    .line 7411
    :goto_0
    return-wide v9

    .line 7344
    :cond_1
    iget v9, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v8, v9, 0xff0

    .line 7345
    .local v8, variation:I
    const/16 v9, 0x10

    if-eq v8, v9, :cond_2

    const/16 v9, 0x80

    if-eq v8, v9, :cond_2

    const/16 v9, 0x90

    if-eq v8, v9, :cond_2

    const/16 v9, 0x20

    if-eq v8, v9, :cond_2

    const/16 v9, 0xb0

    if-ne v8, v9, :cond_3

    .line 7350
    :cond_2
    const-wide/16 v9, -0x1

    goto :goto_0

    .line 7353
    :cond_3
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 7354
    .local v5, len:I
    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 7356
    .local v1, end:I
    if-gez v1, :cond_4

    .line 7357
    const-wide/16 v9, -0x1

    goto :goto_0

    .line 7360
    :cond_4
    move v6, v1

    .line 7362
    .local v6, start:I
    :goto_1
    if-lez v6, :cond_5

    .line 7363
    iget-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    const/4 v10, 0x1

    sub-int v10, v6, v10

    invoke-interface {v9, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 7364
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v7

    .line 7366
    .local v7, type:I
    const/16 v9, 0x27

    if-eq v0, v9, :cond_7

    const/4 v9, 0x1

    if-eq v7, v9, :cond_7

    const/4 v9, 0x2

    if-eq v7, v9, :cond_7

    const/4 v9, 0x3

    if-eq v7, v9, :cond_7

    const/4 v9, 0x4

    if-eq v7, v9, :cond_7

    const/16 v9, 0x9

    if-eq v7, v9, :cond_7

    .line 7376
    .end local v0           #c:C
    .end local v7           #type:I
    :cond_5
    :goto_2
    if-ge v1, v5, :cond_6

    .line 7377
    iget-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v9, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 7378
    .restart local v0       #c:C
    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v7

    .line 7380
    .restart local v7       #type:I
    const/16 v9, 0x27

    if-eq v0, v9, :cond_8

    const/4 v9, 0x1

    if-eq v7, v9, :cond_8

    const/4 v9, 0x2

    if-eq v7, v9, :cond_8

    const/4 v9, 0x3

    if-eq v7, v9, :cond_8

    const/4 v9, 0x4

    if-eq v7, v9, :cond_8

    const/16 v9, 0x9

    if-eq v7, v9, :cond_8

    .line 7390
    .end local v0           #c:C
    .end local v7           #type:I
    :cond_6
    if-ne v6, v1, :cond_9

    .line 7391
    const-wide/16 v9, -0x1

    goto :goto_0

    .line 7362
    .restart local v0       #c:C
    .restart local v7       #type:I
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 7376
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 7394
    .end local v0           #c:C
    .end local v7           #type:I
    :cond_9
    sub-int v9, v1, v6

    const/16 v10, 0x30

    if-le v9, v10, :cond_a

    .line 7395
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    .line 7398
    :cond_a
    const/4 v2, 0x0

    .line 7399
    .local v2, hasLetter:Z
    move v3, v6

    .local v3, i:I
    :goto_3
    if-ge v3, v1, :cond_b

    .line 7400
    iget-object v9, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v9, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isLetter(C)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 7401
    const/4 v2, 0x1

    .line 7406
    :cond_b
    if-nez v2, :cond_d

    .line 7407
    const-wide/16 v9, -0x1

    goto/16 :goto_0

    .line 7399
    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 7411
    :cond_d
    invoke-static {v6, v1}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v9

    goto/16 :goto_0
.end method

.method private hasPasswordTransformationMethod()Z
    .locals 1

    .prologue
    .line 3039
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    instance-of v0, v0, Landroid/text/method/PasswordTransformationMethod;

    return v0
.end method

.method private hideControllers()V
    .locals 0

    .prologue
    .line 8833
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 8834
    invoke-direct {p0}, Landroid/widget/TextView;->hideSelectionModifierCursorController()V

    .line 8835
    return-void
.end method

.method private hideError()V
    .locals 1

    .prologue
    .line 3508
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_0

    .line 3509
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3510
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 3514
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3515
    return-void
.end method

.method private hideInsertionPointCursorController()V
    .locals 1

    .prologue
    .line 8815
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_0

    .line 8816
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->hide()V

    .line 8818
    :cond_0
    return-void
.end method

.method private hideSelectionModifierCursorController()V
    .locals 1

    .prologue
    .line 8821
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_0

    .line 8822
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->hide()V

    .line 8824
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v0, :cond_0

    .line 8825
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 8826
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 8830
    :cond_0
    return-void
.end method

.method private invalidateCursor()V
    .locals 1

    .prologue
    .line 3710
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 3712
    .local v0, where:I
    invoke-direct {p0, v0, v0, v0}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 3713
    return-void
.end method

.method private invalidateCursor(III)V
    .locals 12
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    const/4 v10, 0x1

    .line 3716
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v8, :cond_1

    .line 3717
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 3753
    :cond_0
    :goto_0
    return-void

    .line 3719
    :cond_1
    if-gez p1, :cond_2

    if-gez p2, :cond_2

    if-ltz p3, :cond_0

    .line 3720
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, p3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3721
    .local v1, first:I
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 3723
    .local v2, last:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 3724
    .local v4, line:I
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 3732
    .local v6, top:I
    if-lez v4, :cond_3

    .line 3733
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    sub-int v9, v4, v10

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v8

    sub-int/2addr v6, v8

    .line 3738
    :cond_3
    if-ne v1, v2, :cond_4

    .line 3739
    move v5, v4

    .line 3743
    .local v5, line2:I
    :goto_1
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {v8, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 3744
    .local v0, bottom:I
    invoke-direct {p0, v10}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v7

    .line 3746
    .local v7, voffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    iget v9, p0, Landroid/view/View;->mScrollX:I

    add-int v3, v8, v9

    .line 3747
    .local v3, left:I
    add-int v8, v6, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v10

    sub-int/2addr v9, v10

    add-int v10, v0, v7

    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {p0, v3, v8, v9, v10}, Landroid/widget/TextView;->invalidate(IIII)V

    goto :goto_0

    .line 3741
    .end local v0           #bottom:I
    .end local v3           #left:I
    .end local v5           #line2:I
    .end local v7           #voffset:I
    :cond_4
    iget-object v8, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v8, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .restart local v5       #line2:I
    goto :goto_1
.end method

.method private invalidateCursorPath()V
    .locals 9

    .prologue
    .line 3675
    iget-boolean v3, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    if-eqz v3, :cond_0

    .line 3676
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 3707
    :goto_0
    return-void

    .line 3678
    :cond_0
    sget-object v3, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    monitor-enter v3

    .line 3689
    :try_start_0
    iget-object v4, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v4

    invoke-static {v4}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    .line 3690
    .local v1, thick:F
    const/high16 v4, 0x3f80

    cmpg-float v4, v1, v4

    if-gez v4, :cond_1

    .line 3691
    const/high16 v1, 0x3f80

    .line 3694
    :cond_1
    const/high16 v4, 0x4000

    div-float/2addr v1, v4

    .line 3696
    iget-object v4, p0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    sget-object v5, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 3698
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    .line 3699
    .local v0, left:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v4

    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v5

    add-int v2, v4, v5

    .line 3701
    .local v2, top:I
    int-to-float v4, v0

    sget-object v5, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    sub-float/2addr v4, v1

    invoke-static {v4}, Landroid/util/FloatMath;->floor(F)F

    move-result v4

    float-to-int v4, v4

    int-to-float v5, v2

    sget-object v6, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v6

    sub-float/2addr v5, v1

    invoke-static {v5}, Landroid/util/FloatMath;->floor(F)F

    move-result v5

    float-to-int v5, v5

    int-to-float v6, v0

    sget-object v7, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v7

    add-float/2addr v6, v1

    invoke-static {v6}, Landroid/util/FloatMath;->ceil(F)F

    move-result v6

    float-to-int v6, v6

    int-to-float v7, v2

    sget-object v8, Landroid/widget/TextView;->sTempRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v8

    add-float/2addr v7, v1

    invoke-static {v7}, Landroid/util/FloatMath;->ceil(F)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p0, v4, v5, v6, v7}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 3705
    monitor-exit v3

    goto :goto_0

    .end local v0           #left:I
    .end local v1           #thick:F
    .end local v2           #top:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private isPasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 3043
    and-int/lit16 v0, p1, 0xfff

    .line 3045
    .local v0, variation:I
    const/16 v1, 0x81

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTextEditable()Z
    .locals 1

    .prologue
    .line 7040
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isVisiblePasswordInputType(I)Z
    .locals 2
    .parameter "inputType"

    .prologue
    .line 3051
    and-int/lit16 v0, p1, 0xfff

    .line 3053
    .local v0, variation:I
    const/16 v1, 0x91

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private makeBlink()V
    .locals 6

    .prologue
    .line 6619
    iget-boolean v0, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-nez v0, :cond_1

    .line 6620
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_0

    .line 6621
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6632
    :cond_0
    :goto_0
    return-void

    .line 6627
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-nez v0, :cond_2

    .line 6628
    new-instance v0, Landroid/widget/TextView$Blink;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Blink;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    .line 6630
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6631
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-wide v2, p0, Landroid/widget/TextView;->mShowCursor:J

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView$Blink;->postAtTime(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private nullLayouts()V
    .locals 1

    .prologue
    .line 5009
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_0

    .line 5010
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    .line 5012
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    instance-of v0, v0, Landroid/text/BoringLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    if-nez v0, :cond_1

    .line 5013
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    check-cast v0, Landroid/text/BoringLayout;

    iput-object v0, p0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 5016
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    iput-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5017
    return-void
.end method

.method private onTapUpEvent(II)V
    .locals 7
    .parameter "prevStart"
    .parameter "prevEnd"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 6851
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 6852
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 6854
    .local v0, end:I
    if-ne v2, v0, :cond_0

    .line 6855
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_1

    if-nez p1, :cond_1

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne p2, v4, :cond_1

    move v3, v6

    .line 6857
    .local v3, tapInsideSelectAllOnFocus:Z
    :goto_0
    if-lt v2, p1, :cond_3

    if-ge v2, p2, :cond_3

    if-nez v3, :cond_3

    .line 6865
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 6866
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    if-eqz v4, :cond_2

    move v1, v6

    .line 6867
    .local v1, selectAllGotFocus:Z
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ltz v4, :cond_0

    .line 6868
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$CursorController;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/TextView$CursorController;->show()V

    .line 6882
    .end local v1           #selectAllGotFocus:Z
    .end local v3           #tapInsideSelectAllOnFocus:Z
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v3, v5

    .line 6855
    goto :goto_0

    .restart local v3       #tapInsideSelectAllOnFocus:Z
    :cond_2
    move v1, v5

    .line 6866
    goto :goto_1

    .line 6873
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 6876
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    if-eqz v4, :cond_4

    move v1, v6

    .line 6877
    .restart local v1       #selectAllGotFocus:Z
    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v1, :cond_0

    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ltz v4, :cond_0

    .line 6878
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$CursorController;

    move-result-object v4

    invoke-interface {v4}, Landroid/widget/TextView$CursorController;->show()V

    goto :goto_2

    .end local v1           #selectAllGotFocus:Z
    :cond_4
    move v1, v5

    .line 6876
    goto :goto_3
.end method

.method private static packRangeInLong(II)J
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    .line 7415
    int-to-long v0, p0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p1

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private prepareCursorControllers()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 7011
    const/4 v3, 0x0

    .line 7013
    .local v3, windowSupportsHandles:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 7014
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_1

    .line 7015
    move-object v0, v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    move-object v2, v0

    .line 7016
    .local v2, windowParams:Landroid/view/WindowManager$LayoutParams;
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x3e8

    if-lt v4, v5, :cond_0

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7cf

    if-le v4, v5, :cond_4

    :cond_0
    move v3, v7

    .line 7021
    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    :goto_0
    if-eqz v3, :cond_5

    iget-boolean v4, p0, Landroid/widget/TextView;->mCursorVisible:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_5

    move v4, v7

    :goto_1
    iput-boolean v4, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    .line 7022
    if-eqz v3, :cond_6

    invoke-direct {p0}, Landroid/widget/TextView;->textCanBeSelected()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v4, :cond_6

    move v4, v7

    :goto_2
    iput-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    .line 7025
    iget-boolean v4, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v4, :cond_2

    .line 7026
    iput-object v8, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    .line 7029
    :cond_2
    iget-boolean v4, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v4, :cond_3

    .line 7031
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7032
    iput-object v8, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    .line 7034
    :cond_3
    return-void

    .restart local v2       #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    move v3, v6

    .line 7016
    goto :goto_0

    .end local v2           #windowParams:Landroid/view/WindowManager$LayoutParams;
    :cond_5
    move v4, v6

    .line 7021
    goto :goto_1

    :cond_6
    move v4, v6

    .line 7022
    goto :goto_2
.end method

.method private prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .locals 8
    .parameter "min"
    .parameter "max"
    .parameter "paste"

    .prologue
    const/4 v5, 0x1

    const-string v7, " "

    const-string v6, ""

    .line 7857
    const/4 v2, 0x0

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7858
    if-lez p1, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    sub-int v3, p1, v5

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7860
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7861
    .local v1, originalLength:I
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    sub-int v3, p1, v5

    const-string v4, ""

    invoke-interface {v2, v3, p1, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7864
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v0, v2, v1

    .line 7865
    .local v0, delta:I
    add-int/2addr p1, v0

    .line 7866
    add-int/2addr p2, v0

    .line 7880
    .end local v0           #delta:I
    .end local v1           #originalLength:I
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-interface {p3, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7881
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7883
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    add-int/lit8 v2, p2, 0x1

    const-string v3, ""

    invoke-interface {p0, p2, v2, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7891
    :cond_1
    :goto_1
    invoke-static {p1, p2}, Landroid/widget/TextView;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 7869
    .restart local p0
    :cond_2
    if-lez p1, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    sub-int v3, p1, v5

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 7871
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 7872
    .restart local v1       #originalLength:I
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    const-string v3, " "

    invoke-interface {v2, p1, p1, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 7874
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    sub-int v0, v2, v1

    .line 7875
    .restart local v0       #delta:I
    add-int/2addr p1, v0

    .line 7876
    add-int/2addr p2, v0

    goto :goto_0

    .line 7886
    .end local v0           #delta:I
    .end local v1           #originalLength:I
    :cond_3
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge p2, v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v2, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_1

    .line 7888
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    const-string v2, " "

    invoke-interface {p0, p2, p2, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_1
.end method

.method private registerForPreDraw()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3756
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3757
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-nez v0, :cond_1

    .line 3769
    :cond_0
    :goto_0
    return-void

    .line 3761
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-nez v1, :cond_2

    .line 3762
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3763
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_0

    .line 3764
    :cond_2
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 3765
    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    goto :goto_0
.end method

.method static removeParcelableSpans(Landroid/text/Spannable;II)V
    .locals 3
    .parameter "spannable"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 4829
    const-class v2, Landroid/text/ParcelableSpan;

    invoke-interface {p0, p1, p2, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 4830
    .local v1, spans:[Ljava/lang/Object;
    array-length v0, v1

    .line 4831
    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 4832
    add-int/lit8 v0, v0, -0x1

    .line 4833
    aget-object v2, v1, v0

    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_0

    .line 4835
    :cond_0
    return-void
.end method

.method private restartMarqueeIfNeeded()V
    .locals 2

    .prologue
    .line 3562
    iget-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 3563
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mRestartMarquee:Z

    .line 3564
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 3566
    :cond_0
    return-void
.end method

.method private selectCurrentWord()V
    .locals 15

    .prologue
    const-wide/16 v12, 0x0

    const v11, 0xdbbb

    const v10, 0xdbb8

    const/4 v9, 0x1

    const-string v14, "SC-02B"

    .line 7429
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 7491
    .end local p0
    :goto_0
    return-void

    .line 7435
    .restart local p0
    :cond_0
    iget-boolean v7, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    if-eqz v7, :cond_5

    .line 7436
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7437
    .local v1, minOffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 7460
    .local v0, maxOffset:I
    :goto_1
    invoke-direct {p0, v1}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v5

    .line 7461
    .local v5, wordLimits:J
    cmp-long v7, v5, v12

    if-ltz v7, :cond_7

    .line 7462
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v4

    .line 7467
    .local v4, selectionStart:I
    :goto_2
    invoke-direct {p0, v0}, Landroid/widget/TextView;->getWordLimitsAt(I)J

    move-result-wide v5

    .line 7468
    cmp-long v7, v5, v12

    if-ltz v7, :cond_8

    .line 7469
    invoke-static {v5, v6}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v2

    .line 7473
    .local v2, selectionEnd:I
    :goto_3
    const-string v7, "SCH-I500"

    const-string v8, "SC-02B"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 7474
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-lt v7, v10, :cond_1

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v11, :cond_1

    .line 7475
    add-int/lit8 v4, v4, 0x1

    .line 7476
    :cond_1
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sub-int v8, v2, v9

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-lt v7, v10, :cond_2

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sub-int v8, v2, v9

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v11, :cond_2

    .line 7477
    add-int/lit8 v2, v2, -0x1

    .line 7479
    :cond_2
    const-string v7, "SCH-I500"

    const-string v8, "SC-02B"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 7480
    add-int/lit8 v7, v4, 0x1

    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 7481
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-lt v7, v10, :cond_3

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v4, 0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v11, :cond_3

    .line 7482
    add-int/lit8 v4, v4, 0x1

    .line 7484
    :cond_3
    sub-int v7, v2, v9

    if-lez v7, :cond_4

    .line 7485
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sub-int v8, v2, v9

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-lt v7, v10, :cond_4

    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sub-int v8, v2, v9

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v11, :cond_4

    .line 7486
    add-int/lit8 v2, v2, -0x1

    .line 7490
    :cond_4
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_0

    .line 7440
    .end local v0           #maxOffset:I
    .end local v1           #minOffset:I
    .end local v2           #selectionEnd:I
    .end local v4           #selectionStart:I
    .end local v5           #wordLimits:J
    .restart local p0
    :cond_5
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView$SelectionModifierCursorController;

    .line 7444
    .local v3, selectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    if-nez v3, :cond_6

    .line 7445
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 7446
    .restart local v1       #minOffset:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .restart local v0       #maxOffset:I
    goto/16 :goto_1

    .line 7449
    .end local v0           #maxOffset:I
    .end local v1           #minOffset:I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView$SelectionModifierCursorController;->setMinTouchOffset(I)V

    .line 7450
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView$SelectionModifierCursorController;->setMaxTouchOffset(I)V

    .line 7452
    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->getMinTouchOffset()I

    move-result v1

    .line 7453
    .restart local v1       #minOffset:I
    invoke-virtual {v3}, Landroid/widget/TextView$SelectionModifierCursorController;->getMaxTouchOffset()I

    move-result v0

    .restart local v0       #maxOffset:I
    goto/16 :goto_1

    .line 7464
    .end local v3           #selectionModifierCursorController:Landroid/widget/TextView$SelectionModifierCursorController;
    .restart local v5       #wordLimits:J
    :cond_7
    const/4 v7, 0x5

    sub-int v7, v1, v7

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .restart local v4       #selectionStart:I
    goto/16 :goto_2

    .line 7471
    :cond_8
    add-int/lit8 v7, v0, 0x5

    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    .restart local v2       #selectionEnd:I
    goto/16 :goto_3
.end method

.method private sendBeforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6367
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 6368
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6369
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6370
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6371
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 6370
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6374
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    return-void
.end method

.method private setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V
    .locals 3
    .parameter "e"
    .parameter "filters"

    .prologue
    const/4 v2, 0x0

    .line 3591
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    instance-of v1, v1, Landroid/text/InputFilter;

    if-eqz v1, :cond_0

    .line 3592
    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [Landroid/text/InputFilter;

    .line 3594
    .local v0, nf:[Landroid/text/InputFilter;
    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3595
    array-length v1, p2

    iget-object p0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .end local p0
    check-cast p0, Landroid/text/InputFilter;

    aput-object p0, v0, v1

    .line 3597
    invoke-interface {p1, v0}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    .line 3601
    .end local v0           #nf:[Landroid/text/InputFilter;
    :goto_0
    return-void

    .line 3599
    .restart local p0
    :cond_0
    invoke-interface {p1, p2}, Landroid/text/Editable;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private setInputType(IZ)V
    .locals 8
    .parameter "type"
    .parameter "direct"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 3070
    and-int/lit8 v2, p1, 0xf

    .line 3072
    .local v2, cls:I
    if-ne v2, v6, :cond_4

    .line 3073
    const v4, 0x8000

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    move v0, v6

    .line 3075
    .local v0, autotext:Z
    :goto_0
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_1

    .line 3076
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->CHARACTERS:Landroid/text/method/TextKeyListener$Capitalize;

    .line 3084
    .local v1, cap:Landroid/text/method/TextKeyListener$Capitalize;
    :goto_1
    invoke-static {v0, v1}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v3

    .line 3106
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    .local v3, input:Landroid/text/method/KeyListener;
    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setRawInputType(I)V

    .line 3107
    if-eqz p2, :cond_a

    iput-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 3111
    :goto_3
    return-void

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_0
    move v0, v7

    .line 3073
    goto :goto_0

    .line 3077
    .restart local v0       #autotext:Z
    :cond_1
    and-int/lit16 v4, p1, 0x2000

    if-eqz v4, :cond_2

    .line 3078
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->WORDS:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 3079
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_2
    and-int/lit16 v4, p1, 0x4000

    if-eqz v4, :cond_3

    .line 3080
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 3082
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_3
    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    .restart local v1       #cap:Landroid/text/method/TextKeyListener$Capitalize;
    goto :goto_1

    .line 3085
    .end local v0           #autotext:Z
    .end local v1           #cap:Landroid/text/method/TextKeyListener$Capitalize;
    :cond_4
    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    .line 3086
    and-int/lit16 v4, p1, 0x1000

    if-eqz v4, :cond_5

    move v4, v6

    :goto_4
    and-int/lit16 v5, p1, 0x2000

    if-eqz v5, :cond_6

    move v5, v6

    :goto_5
    invoke-static {v4, v5}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_5
    move v4, v7

    goto :goto_4

    :cond_6
    move v5, v7

    goto :goto_5

    .line 3089
    :cond_7
    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 3090
    and-int/lit16 v4, p1, 0xff0

    sparse-switch v4, :sswitch_data_0

    .line 3098
    invoke-static {}, Landroid/text/method/DateTimeKeyListener;->getInstance()Landroid/text/method/DateTimeKeyListener;

    move-result-object v3

    .line 3099
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3092
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_0
    invoke-static {}, Landroid/text/method/DateKeyListener;->getInstance()Landroid/text/method/DateKeyListener;

    move-result-object v3

    .line 3093
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3095
    .end local v3           #input:Landroid/text/method/KeyListener;
    :sswitch_1
    invoke-static {}, Landroid/text/method/TimeKeyListener;->getInstance()Landroid/text/method/TimeKeyListener;

    move-result-object v3

    .line 3096
    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3101
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_8
    const/4 v4, 0x3

    if-ne v2, v4, :cond_9

    .line 3102
    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3104
    .end local v3           #input:Landroid/text/method/KeyListener;
    :cond_9
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    .restart local v3       #input:Landroid/text/method/KeyListener;
    goto :goto_2

    .line 3109
    :cond_a
    invoke-direct {p0, v3}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    goto :goto_3

    .line 3090
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private setKeyListenerOnly(Landroid/text/method/KeyListener;)V
    .locals 2
    .parameter "input"

    .prologue
    .line 1173
    iput-object p1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    .line 1174
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 1175
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    iget-object v1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 1178
    return-void
.end method

.method private setRawTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1744
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1745
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1747
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 1748
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1749
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1750
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1753
    :cond_0
    return-void
.end method

.method private setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V
    .locals 23
    .parameter "text"
    .parameter "type"
    .parameter "notifyBefore"
    .parameter "oldlen"

    .prologue
    .line 2653
    if-nez p1, :cond_0

    .line 2654
    const-string p1, ""

    .line 2658
    :cond_0
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move v5, v0

    if-eqz v5, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 2659
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->hideControllers()V

    .line 2660
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 2664
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    move v5, v0

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    const/high16 v6, 0x3f80

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 2666
    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 2668
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 2669
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 2672
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    array-length v15, v5

    .line 2673
    .local v15, n:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_0
    if-ge v13, v15, :cond_5

    .line 2674
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    aget-object v5, v5, v13

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sget-object v9, Landroid/widget/TextView;->EMPTY_SPANNED:Landroid/text/Spanned;

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p1

    invoke-interface/range {v5 .. v11}, Landroid/text/InputFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v17

    .line 2676
    .local v17, out:Ljava/lang/CharSequence;
    if-eqz v17, :cond_4

    .line 2677
    move-object/from16 p1, v17

    .line 2673
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2681
    .end local v17           #out:Ljava/lang/CharSequence;
    :cond_5
    if-eqz p3, :cond_6

    .line 2682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    if-eqz v5, :cond_c

    .line 2683
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result p4

    .line 2684
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move/from16 v3, p4

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2690
    :cond_6
    :goto_1
    const/16 v16, 0x0

    .line 2692
    .local v16, needEditableForNotification:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_7

    .line 2693
    const/16 v16, 0x1

    .line 2696
    :cond_7
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    if-nez v5, :cond_8

    if-eqz v16, :cond_d

    .line 2698
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Editable$Factory;->newEditable(Ljava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v20

    .line 2699
    .local v20, t:Landroid/text/Editable;
    move-object/from16 p1, v20

    .line 2700
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 2701
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v14

    .line 2702
    .local v14, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_9

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2709
    .end local v14           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v20           #t:Landroid/text/Editable;
    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move v5, v0

    if-eqz v5, :cond_b

    .line 2712
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_a

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_10

    .line 2713
    :cond_a
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v18, v0

    .line 2718
    .local v18, s2:Landroid/text/Spannable;
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mAutoLinkMask:I

    move v5, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-static {v0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2719
    move-object/from16 p1, v18

    .line 2720
    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-ne v0, v1, :cond_11

    sget-object v5, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 p2, v5

    .line 2727
    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2729
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mLinksClickable:Z

    move v5, v0

    if-eqz v5, :cond_b

    .line 2730
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2735
    .end local v18           #s2:Landroid/text/Spannable;
    :cond_b
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    .line 2736
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 2738
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    if-nez v5, :cond_12

    .line 2739
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    .line 2743
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 2745
    .local v21, textLength:I
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/text/Spannable;

    move v5, v0

    if-eqz v5, :cond_17

    .line 2746
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 v19, v0

    .line 2750
    .local v19, sp:Landroid/text/Spannable;
    const/4 v5, 0x0

    invoke-interface/range {v19 .. v19}, Landroid/text/Spannable;->length()I

    move-result v6

    const-class v7, Landroid/widget/TextView$ChangeWatcher;

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v22

    check-cast v22, [Landroid/widget/TextView$ChangeWatcher;

    .line 2751
    .local v22, watchers:[Landroid/widget/TextView$ChangeWatcher;
    move-object/from16 v0, v22

    array-length v0, v0

    move v12, v0

    .line 2752
    .local v12, count:I
    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_13

    .line 2753
    aget-object v5, v22, v13

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2752
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 2686
    .end local v12           #count:I
    .end local v16           #needEditableForNotification:Z
    .end local v19           #sp:Landroid/text/Spannable;
    .end local v21           #textLength:I
    .end local v22           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_c
    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto/16 :goto_1

    .line 2703
    .restart local v16       #needEditableForNotification:Z
    :cond_d
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 v0, p2

    move-object v1, v5

    if-eq v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    if-eqz v5, :cond_f

    .line 2704
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p1

    goto/16 :goto_2

    .line 2705
    :cond_f
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/TextView$CharWrapper;

    move v5, v0

    if-nez v5, :cond_9

    .line 2706
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    goto/16 :goto_2

    .line 2715
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Spannable$Factory;->newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v18

    .restart local v18       #s2:Landroid/text/Spannable;
    goto/16 :goto_3

    .line 2720
    :cond_11
    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    move-object/from16 p2, v5

    goto/16 :goto_4

    .line 2741
    .end local v18           #s2:Landroid/text/Spannable;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-interface {v0, v1, v2}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    goto/16 :goto_5

    .line 2755
    .restart local v12       #count:I
    .restart local v19       #sp:Landroid/text/Spannable;
    .restart local v21       #textLength:I
    .restart local v22       #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    move-object v5, v0

    if-nez v5, :cond_14

    .line 2756
    new-instance v5, Landroid/widget/TextView$ChangeWatcher;

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$ChangeWatcher;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    .line 2758
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mChangeWatcher:Landroid/widget/TextView$ChangeWatcher;

    move-object v5, v0

    const/4 v6, 0x0

    sget v7, Landroid/widget/TextView;->PRIORITY:I

    shl-int/lit8 v7, v7, 0x10

    or-int/lit8 v7, v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    if-eqz v5, :cond_15

    .line 2762
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2765
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    if-eqz v5, :cond_16

    .line 2766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    move-object v5, v0

    const/4 v6, 0x0

    const/16 v7, 0x12

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    move/from16 v3, v21

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 2770
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    if-eqz v5, :cond_17

    .line 2771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v5, v0

    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spannable;

    move-object/from16 p2, v0

    .end local p2
    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/method/MovementMethod;->initialize(Landroid/widget/TextView;Landroid/text/Spannable;)V

    .line 2778
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 2782
    .end local v12           #count:I
    .end local v19           #sp:Landroid/text/Spannable;
    .end local v22           #watchers:[Landroid/widget/TextView$ChangeWatcher;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v5, v0

    if-eqz v5, :cond_18

    .line 2783
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 2786
    :cond_18
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 2787
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, p4

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 2789
    if-eqz v16, :cond_19

    .line 2790
    check-cast p1, Landroid/text/Editable;

    .end local p1
    invoke-virtual/range {p0 .. p1}, Landroid/widget/TextView;->sendAfterTextChanged(Landroid/text/Editable;)V

    .line 2794
    :cond_19
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 2795
    return-void
.end method

.method private setTypefaceByIndex(II)V
    .locals 1
    .parameter "typefaceIndex"
    .parameter "styleIndex"

    .prologue
    .line 1004
    const/4 v0, 0x0

    .line 1005
    .local v0, tf:Landroid/graphics/Typeface;
    packed-switch p1, :pswitch_data_0

    .line 1019
    :goto_0
    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1020
    return-void

    .line 1007
    :pswitch_0
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 1008
    goto :goto_0

    .line 1011
    :pswitch_1
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 1012
    goto :goto_0

    .line 1015
    :pswitch_2
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 1005
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private shouldAdvanceFocusOnEnter()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4410
    iget-object v1, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-nez v1, :cond_0

    move v1, v3

    .line 4427
    :goto_0
    return v1

    .line 4414
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v1, :cond_1

    move v1, v2

    .line 4415
    goto :goto_0

    .line 4418
    :cond_1
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v1, v1, 0xf

    if-ne v1, v2, :cond_3

    .line 4419
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit16 v0, v1, 0xff0

    .line 4421
    .local v0, variation:I
    const/16 v1, 0x20

    if-eq v0, v1, :cond_2

    const/16 v1, 0x30

    if-ne v0, v1, :cond_3

    :cond_2
    move v1, v2

    .line 4423
    goto :goto_0

    .end local v0           #variation:I
    :cond_3
    move v1, v3

    .line 4427
    goto :goto_0
.end method

.method private showError()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/high16 v7, 0x3f00

    .line 3408
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    if-nez v4, :cond_0

    .line 3409
    iput-boolean v8, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3433
    :goto_0
    return-void

    .line 3413
    :cond_0
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-nez v4, :cond_1

    .line 3414
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 3415
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x109006c

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 3418
    .local v0, err:Landroid/widget/TextView;
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->density:F

    .line 3419
    .local v2, scale:F
    new-instance v4, Landroid/widget/TextView$ErrorPopup;

    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v7

    float-to-int v5, v5

    const/high16 v6, 0x4248

    mul-float/2addr v6, v2

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v4, v0, v5, v6}, Landroid/widget/TextView$ErrorPopup;-><init>(Landroid/widget/TextView;II)V

    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 3421
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->setFocusable(Z)V

    .line 3424
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4, v8}, Landroid/widget/TextView$ErrorPopup;->setInputMethodMode(I)V

    .line 3427
    .end local v0           #err:Landroid/widget/TextView;
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    .end local v2           #scale:F
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v4}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3428
    .local v3, tv:Landroid/widget/TextView;
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v4, v5, v3}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 3429
    iget-object v4, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3431
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v5

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v6

    invoke-virtual {v4, p0, v5, v6}, Landroid/widget/TextView$ErrorPopup;->showAsDropDown(Landroid/view/View;II)V

    .line 3432
    iget-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v5, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v5}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    goto :goto_0
.end method

.method private startMarquee()V
    .locals 2

    .prologue
    .line 6135
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v0, :cond_1

    .line 6147
    :cond_0
    :goto_0
    return-void

    .line 6137
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-direct {p0, v0}, Landroid/widget/TextView;->compressText(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6141
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6144
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-nez v0, :cond_4

    new-instance v0, Landroid/widget/TextView$Marquee;

    invoke-direct {v0, p0}, Landroid/widget/TextView$Marquee;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 6145
    :cond_4
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    iget v1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Marquee;->start(I)V

    goto :goto_0
.end method

.method private startStopMarquee(Z)V
    .locals 2
    .parameter "start"

    .prologue
    .line 6156
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v0, v1, :cond_0

    .line 6157
    if-eqz p1, :cond_1

    .line 6158
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 6163
    :cond_0
    :goto_0
    return-void

    .line 6160
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method private startTextSelectionMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 7915
    iget-boolean v1, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-nez v1, :cond_0

    .line 7916
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7917
    const-string v1, "TextView"

    const-string v2, "TextView has no selection controller. Action mode cancelled."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7939
    :cond_0
    :goto_0
    return-void

    .line 7922
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v1, :cond_0

    .line 7926
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()V

    .line 7927
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TextView$CursorController;->show()V

    .line 7930
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Landroid/widget/TextView;->mOrientation:I

    .line 7931
    iget v1, p0, Landroid/widget/TextView;->mOrientation:I

    if-ne v1, v3, :cond_3

    iget-boolean v1, p0, Landroid/widget/TextView;->mByPassInputType:Z

    if-nez v1, :cond_3

    .line 7932
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 7934
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    .line 7937
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    iput-boolean v3, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    goto :goto_0
.end method

.method private stopMarquee()V
    .locals 1

    .prologue
    .line 6150
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6151
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->stop()V

    .line 6153
    :cond_0
    return-void
.end method

.method private stopTextSelectionMode()V
    .locals 2

    .prologue
    .line 7964
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_0

    .line 7965
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 7966
    invoke-direct {p0}, Landroid/widget/TextView;->hideSelectionModifierCursorController()V

    .line 7967
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 7969
    :cond_0
    return-void
.end method

.method private textCanBeSelected()Z
    .locals 1

    .prologue
    .line 7283
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    invoke-interface {v0}, Landroid/text/method/MovementMethod;->canSelectArbitrarily()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTextColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2323
    const/4 v1, 0x0

    .line 2324
    .local v1, inval:Z
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2325
    .local v0, color:I
    iget v2, p0, Landroid/widget/TextView;->mCurTextColor:I

    if-eq v0, v2, :cond_0

    .line 2326
    iput v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    .line 2327
    const/4 v1, 0x1

    .line 2329
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    .line 2330
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2331
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v2, Landroid/text/TextPaint;->linkColor:I

    if-eq v0, v2, :cond_1

    .line 2332
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    iput v0, v2, Landroid/text/TextPaint;->linkColor:I

    .line 2333
    const/4 v1, 0x1

    .line 2336
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_2

    .line 2337
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 2338
    iget v2, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    if-eq v0, v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 2339
    iput v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    .line 2340
    const/4 v1, 0x1

    .line 2343
    :cond_2
    if-eqz v1, :cond_3

    .line 2344
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2346
    :cond_3
    return-void
.end method

.method private viewportToContentHorizontalOffset()I
    .locals 2

    .prologue
    .line 5938
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private viewportToContentVerticalOffset()I
    .locals 3

    .prologue
    .line 5942
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v1, v2

    .line 5943
    .local v0, offset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_0

    .line 5944
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 5946
    :cond_0
    return v0
.end method


# virtual methods
.method public IsEndHandleVisible()I
    .locals 1

    .prologue
    .line 9091
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v0, :cond_0

    .line 9092
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->endHandleVisible()I

    move-result v0

    .line 9094
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->endHandleVisible()I

    move-result v0

    goto :goto_0
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 1
    .parameter "watcher"

    .prologue
    .line 6343
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 6344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6347
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6348
    return-void
.end method

.method public final append(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 2306
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;II)V

    .line 2307
    return-void
.end method

.method public append(Ljava/lang/CharSequence;II)V
    .locals 2
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 2315
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_0

    .line 2316
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2319
    :cond_0
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    invoke-interface {p0, p1, p2, p3}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;II)Landroid/text/Editable;

    .line 2320
    return-void
.end method

.method public beginBatchEdit()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 4906
    iput-boolean v5, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 4907
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4908
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    .line 4909
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    add-int/lit8 v1, v2, 0x1

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 4910
    .local v1, nesting:I
    if-ne v1, v5, :cond_0

    .line 4911
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    .line 4912
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 4913
    iget-boolean v2, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-eqz v2, :cond_1

    .line 4916
    iput v3, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 4917
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 4923
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->onBeginBatchEdit()V

    .line 4926
    .end local v1           #nesting:I
    :cond_0
    return-void

    .line 4919
    .restart local v1       #nesting:I
    :cond_1
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 4920
    iput v4, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 4921
    iput-boolean v3, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_0
.end method

.method public bringPointIntoView(I)Z
    .locals 29
    .parameter "offset"

    .prologue
    .line 5692
    const/4 v6, 0x0

    .line 5694
    .local v6, changed:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v17

    .line 5697
    .local v17, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 5698
    .local v24, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v20

    .line 5699
    .local v20, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    add-int/lit8 v26, v17, 0x1

    invoke-virtual/range {v25 .. v26}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 5701
    .local v5, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->floor(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v16, v0

    .line 5702
    .local v16, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v25

    invoke-static/range {v25 .. v25}, Landroid/util/FloatMath;->ceil(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v19, v0

    .line 5703
    .local v19, right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/Layout;->getHeight()I

    move-result v15

    .line 5707
    .local v15, ht:I
    sget-object v25, Landroid/widget/TextView$2;->$SwitchMap$android$text$Layout$Alignment:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v26

    aget v25, v25, v26

    packed-switch v25, :pswitch_data_0

    .line 5717
    const/4 v11, 0x0

    .line 5720
    .local v11, grav:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v25

    mul-int v11, v11, v25

    .line 5722
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v26

    sub-int v14, v25, v26

    .line 5723
    .local v14, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v26

    sub-int v25, v25, v26

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v26

    sub-int v23, v25, v26

    .line 5725
    .local v23, vspace:I
    sub-int v25, v5, v20

    div-int/lit8 v13, v25, 0x2

    .line 5726
    .local v13, hslack:I
    move/from16 v22, v13

    .line 5728
    .local v22, vslack:I
    div-int/lit8 v25, v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 5729
    div-int/lit8 v22, v23, 0x4

    .line 5730
    :cond_0
    div-int/lit8 v25, v14, 0x4

    move v0, v13

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    .line 5731
    div-int/lit8 v13, v14, 0x4

    .line 5733
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v12, v0

    .line 5734
    .local v12, hs:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    .line 5736
    .local v21, vs:I
    sub-int v25, v20, v21

    move/from16 v0, v25

    move/from16 v1, v22

    if-ge v0, v1, :cond_2

    .line 5737
    sub-int v21, v20, v22

    .line 5738
    :cond_2
    sub-int v25, v5, v21

    sub-int v26, v23, v22

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_3

    .line 5739
    sub-int v25, v23, v22

    sub-int v21, v5, v25

    .line 5740
    :cond_3
    sub-int v25, v15, v21

    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 5741
    sub-int v21, v15, v23

    .line 5742
    :cond_4
    const/16 v25, 0x0

    sub-int v25, v25, v21

    if-lez v25, :cond_5

    .line 5743
    const/16 v21, 0x0

    .line 5745
    :cond_5
    if-eqz v11, :cond_7

    .line 5746
    sub-int v25, v24, v12

    move/from16 v0, v25

    move v1, v13

    if-ge v0, v1, :cond_6

    .line 5747
    sub-int v12, v24, v13

    .line 5749
    :cond_6
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_7

    .line 5750
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    .line 5754
    :cond_7
    if-gez v11, :cond_d

    .line 5755
    sub-int v25, v16, v12

    if-lez v25, :cond_8

    .line 5756
    move/from16 v12, v16

    .line 5757
    :cond_8
    sub-int v25, v19, v12

    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_9

    .line 5758
    sub-int v12, v19, v14

    .line 5805
    :cond_9
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    move v0, v12

    move/from16 v1, v25

    if-ne v0, v1, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    move/from16 v0, v21

    move/from16 v1, v25

    if-eq v0, v1, :cond_b

    .line 5806
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    if-nez v25, :cond_16

    .line 5807
    move-object/from16 v0, p0

    move v1, v12

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    .line 5828
    :goto_2
    const/4 v6, 0x1

    .line 5831
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v25

    if-eqz v25, :cond_c

    .line 5836
    new-instance v18, Landroid/graphics/Rect;

    add-int/lit8 v25, v24, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 5837
    .local v18, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView;->getInterestingRect(Landroid/graphics/Rect;I)V

    .line 5838
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v26, v0

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 5840
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 5841
    const/4 v6, 0x1

    .line 5845
    .end local v18           #r:Landroid/graphics/Rect;
    :cond_c
    return v6

    .line 5709
    .end local v11           #grav:I
    .end local v12           #hs:I
    .end local v13           #hslack:I
    .end local v14           #hspace:I
    .end local v21           #vs:I
    .end local v22           #vslack:I
    .end local v23           #vspace:I
    :pswitch_0
    const/4 v11, 0x1

    .line 5710
    .restart local v11       #grav:I
    goto/16 :goto_0

    .line 5713
    .end local v11           #grav:I
    :pswitch_1
    const/4 v11, -0x1

    .line 5714
    .restart local v11       #grav:I
    goto/16 :goto_0

    .line 5759
    .restart local v12       #hs:I
    .restart local v13       #hslack:I
    .restart local v14       #hspace:I
    .restart local v21       #vs:I
    .restart local v22       #vslack:I
    .restart local v23       #vspace:I
    :cond_d
    if-lez v11, :cond_f

    .line 5760
    sub-int v25, v19, v12

    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_e

    .line 5761
    sub-int v12, v19, v14

    .line 5762
    :cond_e
    sub-int v25, v16, v12

    if-lez v25, :cond_9

    .line 5763
    move/from16 v12, v16

    goto :goto_1

    .line 5765
    :cond_f
    sub-int v25, v19, v16

    move/from16 v0, v25

    move v1, v14

    if-gt v0, v1, :cond_10

    .line 5769
    sub-int v25, v19, v16

    sub-int v25, v14, v25

    div-int/lit8 v25, v25, 0x2

    sub-int v12, v16, v25

    goto/16 :goto_1

    .line 5770
    :cond_10
    sub-int v25, v19, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_11

    .line 5775
    sub-int v12, v19, v14

    goto/16 :goto_1

    .line 5776
    :cond_11
    add-int v25, v16, v13

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_12

    .line 5781
    move/from16 v12, v16

    goto/16 :goto_1

    .line 5782
    :cond_12
    move/from16 v0, v16

    move v1, v12

    if-le v0, v1, :cond_13

    .line 5786
    move/from16 v12, v16

    goto/16 :goto_1

    .line 5787
    :cond_13
    add-int v25, v12, v14

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_14

    .line 5791
    sub-int v12, v19, v14

    goto/16 :goto_1

    .line 5796
    :cond_14
    sub-int v25, v24, v12

    move/from16 v0, v25

    move v1, v13

    if-ge v0, v1, :cond_15

    .line 5797
    sub-int v12, v24, v13

    .line 5799
    :cond_15
    sub-int v25, v24, v12

    sub-int v26, v14, v13

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_9

    .line 5800
    sub-int v25, v14, v13

    sub-int v12, v24, v25

    goto/16 :goto_1

    .line 5809
    :cond_16
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mLastScroll:J

    move-wide/from16 v27, v0

    sub-long v7, v25, v27

    .line 5810
    .local v7, duration:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v25, v0

    sub-int v9, v12, v25

    .line 5811
    .local v9, dx:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    sub-int v10, v21, v25

    .line 5813
    .local v10, dy:I
    const-wide/16 v25, 0xfa

    cmp-long v25, v7, v25

    if-lez v25, :cond_17

    .line 5814
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 5815
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->getDuration()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->awakenScrollBars(I)Z

    .line 5816
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->invalidate()V

    .line 5825
    :goto_3
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/widget/TextView;->mLastScroll:J

    goto/16 :goto_2

    .line 5818
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->isFinished()Z

    move-result v25

    if-nez v25, :cond_18

    .line 5819
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/widget/Scroller;->abortAnimation()V

    .line 5822
    :cond_18
    move-object/from16 v0, p0

    move v1, v9

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollBy(II)V

    goto :goto_3

    .line 5707
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 7055
    invoke-super {p0}, Landroid/view/View;->cancelLongPress()V

    .line 7056
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mScrolled:Z

    .line 7057
    return-void
.end method

.method public clearComposingText()V
    .locals 1

    .prologue
    .line 6823
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 6824
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->removeComposingSpans(Landroid/text/Spannable;)V

    .line 6826
    :cond_0
    return-void
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 7171
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 7172
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    .line 7174
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeHorizontalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 5908
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    .line 5909
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5910
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollX:I

    .line 5911
    iget-object v0, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    iput v0, p0, Landroid/view/View;->mScrollY:I

    .line 5912
    invoke-virtual {p0}, Landroid/widget/TextView;->postInvalidate()V

    .line 5915
    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 2

    .prologue
    .line 7187
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    .line 7179
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 7180
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 7182
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/View;->computeVerticalScrollRange()I

    move-result v0

    goto :goto_0
.end method

.method public customPrepareSpacesAroundPaste(Ljava/lang/CharSequence;)V
    .locals 10
    .parameter "paste"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 9836
    const/4 v1, 0x0

    .line 9837
    .local v1, min:I
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 9839
    .local v0, max:I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 9840
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v5

    .line 9841
    .local v5, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 9843
    .local v4, selEnd:I
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9844
    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9847
    .end local v4           #selEnd:I
    .end local v5           #selStart:I
    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 9849
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    const-string v7, "JP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 9850
    invoke-direct {p0, v1, v0, p1}, Landroid/widget/TextView;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v2

    .line 9851
    .local v2, minMax:J
    invoke-static {v2, v3}, Landroid/widget/TextView;->extractRangeStartFromLong(J)I

    move-result v1

    .line 9852
    invoke-static {v2, v3}, Landroid/widget/TextView;->extractRangeEndFromLong(J)I

    move-result v0

    .line 9855
    .end local v2           #minMax:J
    :cond_1
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Spannable;

    invoke-static {v6, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 9856
    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v6, Landroid/text/Editable;

    invoke-interface {v6, v1, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9857
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 9859
    iput-boolean v8, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 9860
    iget-object v6, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v6, :cond_2

    .line 9861
    invoke-virtual {p0, v9, v9}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 9865
    :cond_2
    return-void
.end method

.method public debug(I)V
    .locals 4
    .parameter "depth"

    .prologue
    const-string v3, ", "

    .line 5951
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 5953
    invoke-static {p1}, Landroid/widget/TextView;->debugIndent(I)Ljava/lang/String;

    move-result-object v0

    .line 5954
    .local v0, output:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mLeft:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mTop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mRight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mBottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} scroll={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5958
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 5960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5961
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v1, :cond_0

    .line 5962
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mLayout width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5968
    :cond_0
    :goto_0
    const-string v1, "View"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5969
    return-void

    .line 5966
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mText=NULL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public didTouchFocusSelect()Z
    .locals 1

    .prologue
    .line 7050
    iget-boolean v0, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    return v0
.end method

.method public dispatchFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 6639
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 6640
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 6641
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    .line 6642
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 7507
    invoke-virtual {p0}, Landroid/widget/TextView;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    .line 7527
    :goto_0
    return v2

    .line 7511
    :cond_0
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v2}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v0

    .line 7513
    .local v0, isPassword:Z
    if-nez v0, :cond_4

    .line 7514
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7515
    .local v1, text:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7516
    invoke-virtual {p0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v1

    .line 7518
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 7519
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/16 v3, 0x1f4

    if-le v2, v3, :cond_2

    .line 7520
    const/16 v2, 0x1f5

    invoke-interface {v1, v4, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 7522
    :cond_2
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    move v2, v4

    .line 7527
    goto :goto_0

    .line 7525
    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPassword(Z)V

    goto :goto_1
.end method

.method protected drawableStateChanged()V
    .locals 3

    .prologue
    .line 2350
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 2351
    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2354
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2357
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 2358
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_7

    .line 2359
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v1

    .line 2360
    .local v1, state:[I
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2361
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2363
    :cond_4
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2364
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2366
    :cond_5
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2367
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2369
    :cond_6
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2370
    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2373
    .end local v1           #state:[I
    :cond_7
    return-void
.end method

.method public enableSelection()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/16 v0, 0xff

    .line 9827
    invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 9828
    iput-boolean v1, p0, Landroid/widget/TextView;->mEnableSelection:Z

    .line 9829
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLongClickable(Z)V

    .line 9830
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 9831
    return-void
.end method

.method public endBatchEdit()V
    .locals 4

    .prologue
    .line 4929
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    .line 4930
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4931
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    .line 4932
    iget v2, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    const/4 v3, 0x1

    sub-int v1, v2, v3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 4933
    .local v1, nesting:I
    if-nez v1, :cond_0

    .line 4934
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 4937
    .end local v1           #nesting:I
    :cond_0
    return-void
.end method

.method ensureEndedBatchEdit()V
    .locals 2

    .prologue
    .line 4940
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4941
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v1, :cond_0

    .line 4942
    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    .line 4943
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V

    .line 4945
    :cond_0
    return-void
.end method

.method public extractText(Landroid/view/inputmethod/ExtractedTextRequest;Landroid/view/inputmethod/ExtractedText;)Z
    .locals 6
    .parameter "request"
    .parameter "outText"

    .prologue
    const/4 v2, -0x1

    .line 4713
    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    return v0
.end method

.method extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z
    .locals 10
    .parameter "request"
    .parameter "partialStartOffset"
    .parameter "partialEndOffset"
    .parameter "delta"
    .parameter "outText"

    .prologue
    const/4 v9, 0x0

    .line 4723
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .line 4724
    .local v2, content:Ljava/lang/CharSequence;
    if-eqz v2, :cond_c

    .line 4725
    const/4 v7, -0x2

    if-eq p2, v7, :cond_b

    .line 4726
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 4727
    .local v1, N:I
    if-gez p2, :cond_3

    .line 4728
    const/4 v7, -0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4729
    const/4 p2, 0x0

    .line 4730
    move p3, v1

    .line 4762
    :cond_0
    :goto_0
    iget v7, p1, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_a

    .line 4763
    invoke-interface {v2, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 4774
    .end local v1           #N:I
    :goto_1
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4775
    iget-object v7, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    const/high16 v8, 0x1

    invoke-static {v7, v8}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v7

    if-eqz v7, :cond_1

    .line 4776
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4778
    :cond_1
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v7, :cond_2

    .line 4779
    iget v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 4781
    :cond_2
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 4782
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 4783
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v7

    iput v7, p5, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 4784
    const/4 v7, 0x1

    .line 4786
    :goto_2
    return v7

    .line 4733
    .restart local v1       #N:I
    :cond_3
    instance-of v7, v2, Landroid/text/Spanned;

    if-eqz v7, :cond_6

    .line 4734
    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    .line 4735
    .local v5, spanned:Landroid/text/Spanned;
    const-class v7, Landroid/text/ParcelableSpan;

    invoke-interface {v5, p2, p3, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    .line 4737
    .local v6, spans:[Ljava/lang/Object;
    array-length v3, v6

    .line 4738
    .local v3, i:I
    :cond_4
    :goto_3
    if-lez v3, :cond_6

    .line 4739
    add-int/lit8 v3, v3, -0x1

    .line 4740
    aget-object v7, v6, v3

    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 4741
    .local v4, j:I
    if-ge v4, p2, :cond_5

    move p2, v4

    .line 4742
    :cond_5
    aget-object v7, v6, v3

    invoke-interface {v5, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 4743
    if-le v4, p3, :cond_4

    move p3, v4

    goto :goto_3

    .line 4746
    .end local v3           #i:I
    .end local v4           #j:I
    .end local v5           #spanned:Landroid/text/Spanned;
    .end local v6           #spans:[Ljava/lang/Object;
    :cond_6
    iput p2, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4747
    iput p3, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4750
    add-int/2addr p3, p4

    .line 4751
    if-le p2, v1, :cond_8

    .line 4752
    move p2, v1

    .line 4756
    :cond_7
    :goto_4
    if-le p3, v1, :cond_9

    .line 4757
    move p3, v1

    goto :goto_0

    .line 4753
    :cond_8
    if-gez p2, :cond_7

    .line 4754
    const/4 p2, 0x0

    goto :goto_4

    .line 4758
    :cond_9
    if-gez p3, :cond_0

    .line 4759
    const/4 p3, 0x0

    goto :goto_0

    .line 4766
    :cond_a
    invoke-static {v2, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .line 4770
    .end local v1           #N:I
    :cond_b
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4771
    iput v9, p5, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4772
    const-string v7, ""

    iput-object v7, p5, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_c
    move v7, v9

    .line 4786
    goto :goto_2
.end method

.method finishBatchEdit(Landroid/widget/TextView$InputMethodState;)V
    .locals 1
    .parameter "ims"

    .prologue
    .line 4948
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 4950
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 4951
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 4952
    invoke-virtual {p0}, Landroid/widget/TextView;->reportExtractedText()Z

    .line 4957
    :cond_1
    :goto_0
    return-void

    .line 4953
    :cond_2
    iget-boolean v0, p1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    if-eqz v0, :cond_1

    .line 4955
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    goto :goto_0
.end method

.method public final getAutoLinkMask()I
    .locals 1

    .prologue
    .line 1644
    iget v0, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    return v0
.end method

.method public getBaseline()I
    .locals 4

    .prologue
    .line 4337
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_0

    .line 4338
    invoke-super {p0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 4346
    :goto_0
    return v1

    .line 4341
    :cond_0
    const/4 v0, 0x0

    .line 4342
    .local v0, voffset:I
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x30

    if-eq v1, v2, :cond_1

    .line 4343
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v0

    .line 4346
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getBottomPaddingOffset()I
    .locals 3

    .prologue
    .line 3912
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getCompoundDrawablePadding()I
    .locals 2

    .prologue
    .line 1618
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1619
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCompoundDrawables()[Landroid/graphics/drawable/Drawable;
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1581
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1582
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    .line 1583
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v4

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v5

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v6

    .line 1587
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v1, v3

    aput-object v2, v1, v4

    aput-object v2, v1, v5

    aput-object v2, v1, v6

    goto :goto_0
.end method

.method public getCompoundPaddingBottom()I
    .locals 3

    .prologue
    .line 1275
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1276
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1277
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    .line 1279
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 1288
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1289
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1290
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    .line 1292
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 1301
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1302
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1303
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    .line 1305
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public getCompoundPaddingTop()I
    .locals 3

    .prologue
    .line 1262
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1263
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 1264
    :cond_0
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    .line 1266
    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public final getCurrentHintTextColor()I
    .locals 1

    .prologue
    .line 1984
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/TextView;->mCurHintTextColor:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    goto :goto_0
.end method

.method public final getCurrentTextColor()I
    .locals 1

    .prologue
    .line 1853
    iget v0, p0, Landroid/widget/TextView;->mCurTextColor:I

    return v0
.end method

.method protected getDefaultEditable()Z
    .locals 1

    .prologue
    .line 1057
    const/4 v0, 0x0

    return v0
.end method

.method protected getDefaultMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1064
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEditableText()Landroid/text/Editable;
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Editable;

    move-object v0, p0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 6083
    iget-object v0, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public getError()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3345
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtendedPaddingBottom()I
    .locals 7

    .prologue
    .line 1348
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 1349
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    .line 1371
    :goto_0
    return v5

    .line 1352
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_1

    .line 1353
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v5

    goto :goto_0

    .line 1356
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1357
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1358
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1359
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1361
    .local v2, layoutht:I
    if-lt v2, v4, :cond_2

    move v5, v0

    .line 1362
    goto :goto_0

    .line 1365
    :cond_2
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1366
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    .line 1367
    add-int v5, v0, v4

    sub-int/2addr v5, v2

    goto :goto_0

    .line 1368
    :cond_3
    const/16 v5, 0x50

    if-ne v1, v5, :cond_4

    move v5, v0

    .line 1369
    goto :goto_0

    .line 1371
    :cond_4
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v0

    goto :goto_0
.end method

.method public getExtendedPaddingTop()I
    .locals 7

    .prologue
    .line 1315
    iget v5, p0, Landroid/widget/TextView;->mMaxMode:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 1316
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    .line 1338
    :goto_0
    return v5

    .line 1319
    :cond_0
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    if-gt v5, v6, :cond_1

    .line 1320
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v5

    goto :goto_0

    .line 1323
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 1324
    .local v3, top:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 1325
    .local v0, bottom:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v5

    sub-int/2addr v5, v3

    sub-int v4, v5, v0

    .line 1326
    .local v4, viewht:I
    iget-object v5, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    iget v6, p0, Landroid/widget/TextView;->mMaximum:I

    invoke-virtual {v5, v6}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1328
    .local v2, layoutht:I
    if-lt v2, v4, :cond_2

    move v5, v3

    .line 1329
    goto :goto_0

    .line 1332
    :cond_2
    iget v5, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v5, 0x70

    .line 1333
    .local v1, gravity:I
    const/16 v5, 0x30

    if-ne v1, v5, :cond_3

    move v5, v3

    .line 1334
    goto :goto_0

    .line 1335
    :cond_3
    const/16 v5, 0x50

    if-ne v1, v5, :cond_4

    .line 1336
    add-int v5, v3, v4

    sub-int/2addr v5, v2

    goto :goto_0

    .line 1338
    :cond_4
    sub-int v5, v4, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v3

    goto :goto_0
.end method

.method public getFilters()[Landroid/text/InputFilter;
    .locals 1

    .prologue
    .line 3607
    iget-object v0, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    return-object v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 4270
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v4, :cond_0

    .line 4271
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 4295
    :goto_0
    return-void

    .line 4275
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 4276
    .local v3, sel:I
    if-gez v3, :cond_1

    .line 4277
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 4281
    :cond_1
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 4282
    .local v0, line:I
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 4283
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 4285
    iget-object v4, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p1, Landroid/graphics/Rect;->left:I

    .line 4286
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 4289
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 4290
    .local v1, paddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v2

    .line 4291
    .local v2, paddingTop:I
    iget v4, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v4, v4, 0x70

    const/16 v5, 0x30

    if-eq v4, v5, :cond_2

    .line 4292
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v4

    add-int/2addr v2, v4

    .line 4294
    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0
.end method

.method public getFreezesText()Z
    .locals 1

    .prologue
    .line 2585
    iget-boolean v0, p0, Landroid/widget/TextView;->mFreezesText:Z

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 2064
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    return v0
.end method

.method public getHint()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 2962
    iget-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getHintTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1975
    iget-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getHysteresisOffset(III)I
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "previousOffset"

    .prologue
    const/4 v8, 0x1

    .line 8871
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 8872
    .local v1, layout:Landroid/text/Layout;
    if-nez v1, :cond_0

    const/4 v6, -0x1

    .line 8894
    :goto_0
    return v6

    .line 8874
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v6

    sub-int/2addr p2, v6

    .line 8876
    const/4 v6, 0x0

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 8877
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v7

    sub-int/2addr v6, v7

    sub-int/2addr v6, v8

    invoke-static {v6, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8878
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v6

    add-int/2addr p2, v6

    .line 8880
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 8882
    .local v2, line:I
    invoke-virtual {v1, p3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 8883
    .local v3, previousLine:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    .line 8884
    .local v5, previousLineTop:I
    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v4

    .line 8885
    .local v4, previousLineBottom:I
    sub-int v6, v4, v5

    div-int/lit8 v0, v6, 0x8

    .line 8889
    .local v0, hysteresisThreshold:I
    add-int/lit8 v6, v3, 0x1

    if-ne v2, v6, :cond_1

    sub-int v6, p2, v4

    if-lt v6, v0, :cond_2

    :cond_1
    sub-int v6, v3, v8

    if-ne v2, v6, :cond_3

    sub-int v6, v5, p2

    if-ge v6, v0, :cond_3

    .line 8891
    :cond_2
    move v2, v3

    .line 8894
    :cond_3
    invoke-direct {p0, v2, p1}, Landroid/widget/TextView;->getOffsetForHorizontal(II)I

    move-result v6

    goto :goto_0
.end method

.method public getImeActionId()I
    .locals 1

    .prologue
    .line 3185
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeActionLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3174
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 3145
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v0, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInputExtras(Z)Landroid/os/Bundle;
    .locals 2
    .parameter "create"

    .prologue
    const/4 v1, 0x0

    .line 3328
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_1

    .line 3329
    if-nez p1, :cond_0

    move-object v0, v1

    .line 3336
    :goto_0
    return-object v0

    .line 3330
    :cond_0
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3332
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    if-nez v0, :cond_3

    .line 3333
    if-nez p1, :cond_2

    move-object v0, v1

    goto :goto_0

    .line 3334
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 3336
    :cond_3
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 3120
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    return v0
.end method

.method getInsertionController()Landroid/widget/TextView$CursorController;
    .locals 2

    .prologue
    .line 8912
    iget-boolean v1, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 8913
    const/4 v1, 0x0

    .line 8925
    :goto_0
    return-object v1

    .line 8916
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-nez v1, :cond_1

    .line 8917
    new-instance v1, Landroid/widget/TextView$InsertionPointCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InsertionPointCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    .line 8919
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8920
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1

    .line 8921
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8925
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    goto :goto_0
.end method

.method public getIsInTextSelectionMode()Z
    .locals 1

    .prologue
    .line 9087
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    return v0
.end method

.method public final getKeyListener()Landroid/text/method/KeyListener;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    return-object v0
.end method

.method public final getLayout()Landroid/text/Layout;
    .locals 1

    .prologue
    .line 1113
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 7120
    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_2

    .line 7121
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v1}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v1

    if-nez v1, :cond_1

    .line 7122
    iget-object v0, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7123
    .local v0, marquee:Landroid/widget/TextView$Marquee;
    invoke-virtual {v0}, Landroid/widget/TextView$Marquee;->shouldDrawLeftFade()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7124
    iget v1, v0, Landroid/widget/TextView$Marquee;->mScroll:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 7141
    .end local v0           #marquee:Landroid/widget/TextView$Marquee;
    :goto_0
    return v1

    .restart local v0       #marquee:Landroid/widget/TextView$Marquee;
    :cond_0
    move v1, v3

    .line 7126
    goto :goto_0

    .line 7128
    .end local v0           #marquee:Landroid/widget/TextView$Marquee;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 7129
    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x7

    packed-switch v1, :pswitch_data_0

    .line 7141
    :cond_2
    :pswitch_0
    invoke-super {p0}, Landroid/view/View;->getLeftFadingEdgeStrength()F

    move-result v1

    goto :goto_0

    :pswitch_1
    move v1, v3

    .line 7131
    goto :goto_0

    .line 7133
    :pswitch_2
    iget-object v1, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v4}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v4}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    :pswitch_3
    move v1, v3

    .line 7137
    goto :goto_0

    .line 7129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getLeftPaddingOffset()I
    .locals 4

    .prologue
    .line 3901
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 4
    .parameter "line"
    .parameter "bounds"

    .prologue
    const/4 v3, 0x0

    .line 4315
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v2, :cond_1

    .line 4316
    if-eqz p2, :cond_0

    .line 4317
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    move v2, v3

    .line 4331
    :goto_0
    return v2

    .line 4322
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1, p2}, Landroid/text/Layout;->getLineBounds(ILandroid/graphics/Rect;)I

    move-result v0

    .line 4324
    .local v0, baseline:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v1

    .line 4325
    .local v1, voffset:I
    iget v2, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v2, v2, 0x70

    const/16 v3, 0x30

    if-eq v2, v3, :cond_2

    .line 4326
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v2

    add-int/2addr v1, v2

    .line 4328
    :cond_2
    if-eqz p2, :cond_3

    .line 4329
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v2

    invoke-virtual {p2, v2, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 4331
    :cond_3
    add-int v2, v0, v1

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 4302
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineHeight()I
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/TextView;->mSpacingMult:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    add-float/2addr v0, v1

    invoke-static {v0}, Lcom/android/internal/util/FastMath;->round(F)I

    move-result v0

    return v0
.end method

.method public final getLinkTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 2014
    iget-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public final getLinksClickable()Z
    .locals 1

    .prologue
    .line 1930
    iget-boolean v0, p0, Landroid/widget/TextView;->mLinksClickable:Z

    return v0
.end method

.method public final getMovementMethod()Landroid/text/method/MovementMethod;
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    return-object v0
.end method

.method public getOffset(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 8857
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, -0x1

    .line 8867
    :goto_0
    return v2

    .line 8859
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    .line 8861
    const/4 v2, 0x0

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 8862
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 8863
    invoke-virtual {p0}, Landroid/widget/TextView;->getScrollY()I

    move-result v2

    add-int/2addr p2, v2

    .line 8865
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 8866
    .local v0, line:I
    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->getOffsetForHorizontal(II)I

    move-result v1

    .local v1, offset:I
    move v2, v1

    .line 8867
    goto :goto_0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 1893
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public getPaintFlags()I
    .locals 1

    .prologue
    .line 2072
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    return v0
.end method

.method public getPrivateImeOptions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3294
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 7146
    iget-object v3, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v4, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v3, v4, :cond_1

    .line 7147
    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    invoke-virtual {v3}, Landroid/widget/TextView$Marquee;->isStopped()Z

    move-result v3

    if-nez v3, :cond_0

    .line 7148
    iget-object v1, p0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    .line 7149
    .local v1, marquee:Landroid/widget/TextView$Marquee;
    iget v3, v1, Landroid/widget/TextView$Marquee;->mMaxFadeScroll:F

    iget v4, v1, Landroid/widget/TextView$Marquee;->mScroll:F

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 7166
    .end local v1           #marquee:Landroid/widget/TextView$Marquee;
    :goto_0
    return v3

    .line 7150
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 7151
    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x7

    packed-switch v3, :pswitch_data_0

    .line 7166
    :cond_1
    :pswitch_0
    invoke-super {p0}, Landroid/view/View;->getRightFadingEdgeStrength()F

    move-result v3

    goto :goto_0

    .line 7153
    :pswitch_1
    iget v3, p0, Landroid/view/View;->mRight:I

    iget v4, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v2, v3, v4

    .line 7155
    .local v2, textWidth:I
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v0

    .line 7156
    .local v0, lineWidth:F
    int-to-float v3, v2

    sub-float v3, v0, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0

    .line 7158
    .end local v0           #lineWidth:F
    .end local v2           #textWidth:I
    :pswitch_2
    const/4 v3, 0x0

    goto :goto_0

    .line 7160
    :pswitch_3
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v5}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    iget v4, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getHorizontalFadingEdgeLength()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    goto :goto_0

    .line 7151
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected getRightPaddingOffset()I
    .locals 4

    .prologue
    .line 3917
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v0, v1

    neg-int v0, v0

    const/4 v1, 0x0

    iget v2, p0, Landroid/widget/TextView;->mShadowDx:F

    iget v3, p0, Landroid/widget/TextView;->mShadowRadius:F

    add-float/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method getSelectionController()Landroid/widget/TextView$CursorController;
    .locals 2

    .prologue
    .line 8929
    iget-boolean v1, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    if-nez v1, :cond_0

    .line 8930
    const/4 v1, 0x0

    .line 8942
    :goto_0
    return-object v1

    .line 8933
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-nez v1, :cond_1

    .line 8934
    new-instance v1, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-direct {v1, p0}, Landroid/widget/TextView$SelectionModifierCursorController;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    .line 8936
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 8937
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1

    .line 8938
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 8942
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 5984
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getSelectionStart()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "text"
    .end annotation

    .prologue
    .line 5976
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 1077
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTextScaleX()F
    .locals 1

    .prologue
    .line 1760
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .prologue
    .line 1704
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    return v0
.end method

.method protected getTopPaddingOffset()I
    .locals 3

    .prologue
    .line 3907
    const/4 v0, 0x0

    iget v1, p0, Landroid/widget/TextView;->mShadowDy:F

    iget v2, p0, Landroid/widget/TextView;->mShadowRadius:F

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTotalPaddingBottom()I
    .locals 2

    .prologue
    .line 1406
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getBottomVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getTotalPaddingLeft()I
    .locals 1

    .prologue
    .line 1380
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingRight()I
    .locals 1

    .prologue
    .line 1388
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method public getTotalPaddingTop()I
    .locals 2

    .prologue
    .line 1397
    invoke-virtual {p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final getTransformationMethod()Landroid/text/method/TransformationMethod;
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getUrls()[Landroid/text/style/URLSpan;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1941
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    .line 1942
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/text/style/URLSpan;

    move-object v0, p0

    .line 1944
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    new-array v0, v3, [Landroid/text/style/URLSpan;

    goto :goto_0
.end method

.method handleTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "buffer"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6411
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6412
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v1, :cond_1

    .line 6413
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->updateAfterEdit()V

    .line 6415
    :cond_1
    if-eqz v0, :cond_3

    .line 6416
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 6417
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v1, :cond_5

    .line 6418
    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6419
    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    .line 6424
    :cond_2
    :goto_0
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    sub-int v2, p4, p3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    .line 6427
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->sendOnTextChanged(Ljava/lang/CharSequence;III)V

    .line 6428
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6431
    if-eq p3, p4, :cond_4

    .line 6432
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6433
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 6435
    :cond_4
    return-void

    .line 6421
    :cond_5
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v1, p2, :cond_6

    iput p2, v0, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6422
    :cond_6
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    add-int v2, p2, p3

    if-ge v1, v2, :cond_2

    add-int v1, p2, p3

    iput v1, v0, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    goto :goto_0
.end method

.method hasInsertionController()Z
    .locals 1

    .prologue
    .line 8901
    iget-boolean v0, p0, Landroid/widget/TextView;->mInsertionControllerEnabled:Z

    return v0
.end method

.method public hasSelection()Z
    .locals 3

    .prologue
    .line 5991
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 5992
    .local v1, selectionStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 5994
    .local v0, selectionEnd:I
    if-ltz v1, :cond_0

    if-eq v1, v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method hasSelectionController()Z
    .locals 1

    .prologue
    .line 8908
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionControllerEnabled:Z

    return v0
.end method

.method public hideCursorControllerMenu()V
    .locals 1

    .prologue
    .line 7973
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v0, :cond_0

    .line 7974
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->hideCursorControllerMenu()V

    .line 7976
    :cond_0
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .parameter "drawable"

    .prologue
    .line 3933
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3934
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 3935
    .local v4, dirty:Landroid/graphics/Rect;
    iget v7, p0, Landroid/view/View;->mScrollX:I

    .line 3936
    .local v7, scrollX:I
    iget v8, p0, Landroid/view/View;->mScrollY:I

    .line 3941
    .local v8, scrollY:I
    iget-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3942
    .local v5, drawables:Landroid/widget/TextView$Drawables;
    if-eqz v5, :cond_0

    .line 3943
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_2

    .line 3944
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 3945
    .local v3, compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 3946
    .local v0, compoundPaddingBottom:I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 3948
    .local v9, vspace:I
    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v7, v10

    .line 3949
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 3974
    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_0
    :goto_0
    iget v10, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v10, v7

    iget v11, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v8

    iget v12, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v7

    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v8

    invoke-virtual {p0, v10, v11, v12, v13}, Landroid/widget/TextView;->invalidate(IIII)V

    .line 3977
    .end local v4           #dirty:Landroid/graphics/Rect;
    .end local v5           #drawables:Landroid/widget/TextView$Drawables;
    .end local v7           #scrollX:I
    .end local v8           #scrollY:I
    :cond_1
    return-void

    .line 3950
    .restart local v4       #dirty:Landroid/graphics/Rect;
    .restart local v5       #drawables:Landroid/widget/TextView$Drawables;
    .restart local v7       #scrollX:I
    .restart local v8       #scrollY:I
    :cond_2
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_3

    .line 3951
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    .line 3952
    .restart local v3       #compoundPaddingTop:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    .line 3953
    .restart local v0       #compoundPaddingBottom:I
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v0

    sub-int v9, v10, v3

    .line 3955
    .restart local v9       #vspace:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    sub-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 3956
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    sub-int v10, v9, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v3

    add-int/2addr v8, v10

    .line 3957
    goto :goto_0

    .end local v0           #compoundPaddingBottom:I
    .end local v3           #compoundPaddingTop:I
    .end local v9           #vspace:I
    :cond_3
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_4

    .line 3958
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 3959
    .local v1, compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 3960
    .local v2, compoundPaddingRight:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 3962
    .local v6, hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 3963
    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    add-int/2addr v8, v10

    .line 3964
    goto :goto_0

    .end local v1           #compoundPaddingLeft:I
    .end local v2           #compoundPaddingRight:I
    .end local v6           #hspace:I
    :cond_4
    iget-object v10, v5, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v10, :cond_0

    .line 3965
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v1

    .line 3966
    .restart local v1       #compoundPaddingLeft:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    .line 3967
    .restart local v2       #compoundPaddingRight:I
    iget v10, p0, Landroid/view/View;->mRight:I

    iget v11, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    sub-int/2addr v10, v2

    sub-int v6, v10, v1

    .line 3969
    .restart local v6       #hspace:I
    iget v10, v5, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    sub-int v10, v6, v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v10, v1

    add-int/2addr v7, v10

    .line 3970
    iget v10, p0, Landroid/view/View;->mBottom:I

    iget v11, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    iget v11, v5, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    sub-int/2addr v10, v11

    add-int/2addr v8, v10

    goto/16 :goto_0
.end method

.method public isIMEChangable()Z
    .locals 1

    .prologue
    .line 266
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsIMEChangable:Z

    return v0
.end method

.method isInBatchEditMode()Z
    .locals 2

    .prologue
    .line 8946
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 8947
    .local v0, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v0, :cond_1

    .line 8948
    iget v1, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 8950
    :goto_0
    return v1

    .line 8948
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 8950
    :cond_1
    iget-boolean v1, p0, Landroid/widget/TextView;->mInBatchEditControllers:Z

    goto :goto_0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 7698
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 7699
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 2

    .prologue
    .line 3896
    iget v0, p0, Landroid/widget/TextView;->mShadowRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method

.method protected makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V
    .locals 22
    .parameter "w"
    .parameter "hintWidth"
    .parameter "boring"
    .parameter "hintBoring"
    .parameter "ellipsisWidth"
    .parameter "bringIntoView"

    .prologue
    .line 5049
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->stopMarquee()V

    .line 5051
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 5053
    if-gez p1, :cond_0

    .line 5054
    const/16 p1, 0x0

    .line 5056
    :cond_0
    if-gez p2, :cond_1

    .line 5057
    const/16 p2, 0x0

    .line 5061
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v2, v0

    and-int/lit8 v2, v2, 0x7

    sparse-switch v2, :sswitch_data_0

    .line 5071
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 5074
    .local v7, alignment:Landroid/text/Layout$Alignment;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v2, v0

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 5076
    .local v21, shouldEllipsize:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v2, v0

    instance-of v2, v2, Landroid/text/Spannable;

    if-eqz v2, :cond_a

    .line 5077
    new-instance v2, Landroid/text/DynamicLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    move-object v6, v0

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v6, v0

    move-object v11, v6

    :goto_2
    move/from16 v6, p1

    move/from16 v12, p5

    invoke-direct/range {v2 .. v12}, Landroid/text/DynamicLayout;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5142
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_14

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 5143
    :goto_4
    const/4 v2, 0x0

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    if-eqz v2, :cond_5

    .line 5146
    if-eqz v21, :cond_2

    move/from16 p2, p1

    .line 5148
    :cond_2
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p4

    move-object v1, v2

    if-ne v0, v1, :cond_3

    .line 5149
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p4

    .line 5151
    if-eqz p4, :cond_3

    .line 5152
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 5156
    :cond_3
    if-eqz p4, :cond_1a

    .line 5157
    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p2

    if-gt v0, v1, :cond_16

    if-eqz v21, :cond_4

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p5

    if-gt v0, v1, :cond_16

    .line 5159
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_15

    .line 5160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    .line 5170
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/text/BoringLayout;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    .line 5208
    :cond_5
    :goto_6
    if-eqz p6, :cond_6

    .line 5209
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5212
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v3, :cond_7

    .line 5213
    move/from16 v0, p5

    int-to-float v0, v0

    move v2, v0

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Landroid/widget/TextView;->compressText(F)Z

    move-result v2

    if-nez v2, :cond_7

    .line 5214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    move-object v2, v0

    move-object v0, v2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v20, v0

    .line 5217
    .local v20, height:I
    const/4 v2, -0x2

    move/from16 v0, v20

    move v1, v2

    if-eq v0, v1, :cond_1c

    const/4 v2, -0x1

    move/from16 v0, v20

    move v1, v2

    if-eq v0, v1, :cond_1c

    .line 5218
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->startMarquee()V

    .line 5227
    .end local v20           #height:I
    :cond_7
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 5228
    return-void

    .line 5063
    .end local v7           #alignment:Landroid/text/Layout$Alignment;
    .end local v21           #shouldEllipsize:Z
    .restart local p1
    :sswitch_0
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 5064
    .restart local v7       #alignment:Landroid/text/Layout$Alignment;
    goto/16 :goto_0

    .line 5067
    .end local v7           #alignment:Landroid/text/Layout$Alignment;
    :sswitch_1
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .line 5068
    .restart local v7       #alignment:Landroid/text/Layout$Alignment;
    goto/16 :goto_0

    .line 5074
    :cond_8
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_1

    .line 5077
    .restart local v21       #shouldEllipsize:Z
    :cond_9
    const/4 v6, 0x0

    move-object v11, v6

    goto/16 :goto_2

    .line 5082
    :cond_a
    sget-object v2, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    move-object/from16 v0, p3

    move-object v1, v2

    if-ne v0, v1, :cond_b

    .line 5083
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object v4, v0

    invoke-static {v2, v3, v4}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object p3

    .line 5085
    if-eqz p3, :cond_b

    .line 5086
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 5090
    :cond_b
    if-eqz p3, :cond_12

    .line 5091
    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p1

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v2, v0

    if-eqz v2, :cond_c

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p5

    if-gt v0, v1, :cond_e

    .line 5093
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_d

    .line 5094
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    invoke-virtual/range {v3 .. v11}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    .line 5104
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v2, v0

    check-cast v2, Landroid/text/BoringLayout;

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    goto/16 :goto_3

    .line 5099
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    invoke-static/range {v4 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto :goto_8

    .line 5105
    :cond_e
    if-eqz v21, :cond_10

    move-object/from16 v0, p3

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p1

    if-gt v0, v1, :cond_10

    .line 5106
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_f

    .line 5107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    move/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 5113
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p1

    move-object/from16 v10, p3

    move/from16 v13, p5

    invoke-static/range {v4 .. v13}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 5118
    :cond_10
    if-eqz v21, :cond_11

    .line 5119
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p1

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 5125
    :cond_11
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 5129
    :cond_12
    if-eqz v21, :cond_13

    .line 5130
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p1

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 5136
    :cond_13
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    goto/16 :goto_3

    .line 5142
    :cond_14
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_4

    .line 5165
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    invoke-static/range {v4 .. v11}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_5

    .line 5171
    :cond_16
    if-eqz v21, :cond_18

    move-object/from16 v0, p4

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move v2, v0

    move v0, v2

    move/from16 v1, p2

    if-gt v0, v1, :cond_18

    .line 5172
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v2, v0

    if-eqz v2, :cond_17

    .line 5173
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mSavedHintLayout:Landroid/text/BoringLayout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    move/from16 v13, p5

    invoke-virtual/range {v3 .. v13}, Landroid/text/BoringLayout;->replaceOrMake(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_6

    .line 5179
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v12, v0

    move/from16 v6, p2

    move-object/from16 v10, p4

    move/from16 v13, p5

    invoke-static/range {v4 .. v13}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;ZLandroid/text/TextUtils$TruncateAt;I)Landroid/text/BoringLayout;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_6

    .line 5184
    :cond_18
    if-eqz v21, :cond_19

    .line 5185
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p2

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_6

    .line 5191
    :cond_19
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_6

    .line 5195
    :cond_1a
    if-eqz v21, :cond_1b

    .line 5196
    new-instance v8, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v9, v0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v2, v0

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v18, v0

    move/from16 v13, p2

    move-object v14, v7

    move/from16 v19, p5

    invoke-direct/range {v8 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_6

    .line 5202
    :cond_1b
    new-instance v3, Landroid/text/StaticLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingMult:F

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mSpacingAdd:F

    move v9, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mIncludePad:Z

    move v10, v0

    move/from16 v6, p2

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    goto/16 :goto_6

    .line 5221
    .end local p1
    .restart local v20       #height:I
    :cond_1c
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mRestartMarquee:Z

    goto/16 :goto_7

    .line 5061
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public moveCursorToVisibleOffset()Z
    .locals 19

    .prologue
    .line 5857
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/text/Spannable;

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 5858
    const/16 v16, 0x0

    .line 5903
    .end local p0
    :goto_0
    return v16

    .line 5860
    .restart local p0
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v11

    .line 5861
    .local v11, start:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v4

    .line 5862
    .local v4, end:I
    if-eq v11, v4, :cond_1

    .line 5863
    const/16 v16, 0x0

    goto :goto_0

    .line 5868
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v8

    .line 5870
    .local v8, line:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v12

    .line 5871
    .local v12, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int/lit8 v17, v8, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 5872
    .local v3, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v17

    sub-int v15, v16, v17

    .line 5873
    .local v15, vspace:I
    sub-int v16, v3, v12

    div-int/lit8 v14, v16, 0x2

    .line 5874
    .local v14, vslack:I
    div-int/lit8 v16, v15, 0x4

    move v0, v14

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 5875
    div-int/lit8 v14, v15, 0x4

    .line 5876
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v13, v0

    .line 5878
    .local v13, vs:I
    add-int v16, v13, v14

    move v0, v12

    move/from16 v1, v16

    if-ge v0, v1, :cond_5

    .line 5879
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int v17, v13, v14

    sub-int v18, v3, v12

    add-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    .line 5886
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v17

    sub-int v16, v16, v17

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v17

    sub-int v6, v16, v17

    .line 5887
    .local v6, hspace:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    .line 5888
    .local v5, hs:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v7

    .line 5889
    .local v7, leftChar:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int v17, v6, v5

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v0, v16

    move v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v10

    .line 5891
    .local v10, rightChar:I
    move v9, v11

    .line 5892
    .local v9, newStart:I
    if-ge v9, v7, :cond_6

    .line 5893
    move v9, v7

    .line 5898
    :cond_4
    :goto_2
    if-eq v9, v11, :cond_7

    .line 5899
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    move-object/from16 v0, p0

    move v1, v9

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 5900
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 5880
    .end local v5           #hs:I
    .end local v6           #hspace:I
    .end local v7           #leftChar:I
    .end local v9           #newStart:I
    .end local v10           #rightChar:I
    .restart local p0
    :cond_5
    add-int v16, v15, v13

    sub-int v16, v16, v14

    move v0, v3

    move/from16 v1, v16

    if-le v0, v1, :cond_3

    .line 5881
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v16, v0

    add-int v17, v15, v13

    sub-int v17, v17, v14

    sub-int v18, v3, v12

    sub-int v17, v17, v18

    invoke-virtual/range {v16 .. v17}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v8

    goto :goto_1

    .line 5894
    .restart local v5       #hs:I
    .restart local v6       #hspace:I
    .restart local v7       #leftChar:I
    .restart local v9       #newStart:I
    .restart local v10       #rightChar:I
    :cond_6
    if-le v9, v10, :cond_4

    .line 5895
    move v9, v10

    goto :goto_2

    .line 5903
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3837
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 3839
    iput-boolean v2, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 3841
    iget-boolean v1, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    if-eqz v1, :cond_0

    .line 3842
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 3843
    iput-boolean v2, p0, Landroid/widget/TextView;->mShowErrorAfterAttach:Z

    .line 3846
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3847
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_2

    .line 3848
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_1

    .line 3849
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3851
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_2

    .line 3852
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3855
    :cond_2
    return-void
.end method

.method public onBeginBatchEdit()V
    .locals 0

    .prologue
    .line 4985
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 4654
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 4903
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 9795
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9796
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Landroid/widget/TextView;->mOrientation:I

    if-eq v0, v1, :cond_0

    .line 9797
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 9798
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 9800
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Landroid/widget/TextView;->mOrientation:I

    .line 9805
    sget-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    if-eqz v0, :cond_1

    .line 9806
    sget-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    invoke-interface {v0}, Landroid/view/ContextMenu;->close()V

    .line 9807
    const/4 v0, 0x0

    sput-object v0, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    .line 9812
    :cond_1
    return-void
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 12
    .parameter "menu"

    .prologue
    .line 7543
    invoke-super {p0, p1}, Landroid/view/View;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 7544
    const/4 v0, 0x0

    .line 7545
    .local v0, added:Z
    iget-boolean v8, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    if-eqz v8, :cond_8

    :cond_0
    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Landroid/widget/TextView;->mContextMenuTriggeredByKey:Z

    .line 7552
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    iput-boolean v8, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 7553
    new-instance v1, Landroid/widget/TextView$MenuHandler;

    const/4 v8, 0x0

    invoke-direct {v1, p0, v8}, Landroid/widget/TextView$MenuHandler;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    .line 7555
    .local v1, handler:Landroid/widget/TextView$MenuHandler;
    iget-boolean v8, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-eqz v8, :cond_9

    .line 7557
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 7558
    const/4 v8, 0x0

    const v9, 0x1020020

    const/4 v10, 0x0

    const v11, 0x1040003

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x78

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7561
    const/4 v0, 0x1

    .line 7564
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 7565
    const/4 v8, 0x0

    const v9, 0x1020021

    const/4 v10, 0x0

    const v11, 0x1040001

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x63

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7568
    const/4 v0, 0x1

    .line 7571
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 7572
    const/4 v8, 0x0

    const v9, 0x1020022

    const/4 v10, 0x0

    const v11, 0x104000b

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x76

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7575
    const/4 v0, 0x1

    .line 7578
    :cond_3
    if-nez v0, :cond_4

    .line 7579
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7580
    const/4 v0, 0x1

    .line 7665
    :cond_4
    :goto_1
    if-eqz v0, :cond_d

    .line 7666
    invoke-virtual {p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p0}, Landroid/widget/TextView;->isIMEChangable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 7667
    const/4 v8, 0x1

    const v9, 0x1020024

    const/4 v10, 0x0

    const v11, 0x104040e

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7669
    const/4 v0, 0x1

    .line 7671
    :cond_5
    const v8, 0x1040410

    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 7683
    :cond_6
    :goto_2
    instance-of v8, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v8, :cond_7

    .line 7684
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 7689
    :cond_7
    sput-object p1, Landroid/widget/TextView;->mContextMenu:Landroid/view/ContextMenu;

    .line 7691
    return-void

    .line 7545
    .end local v1           #handler:Landroid/widget/TextView$MenuHandler;
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 7584
    .restart local v1       #handler:Landroid/widget/TextView$MenuHandler;
    :cond_9
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v8

    if-eqz v8, :cond_b

    .line 7585
    invoke-direct {p0}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    move-result v8

    if-nez v8, :cond_a

    .line 7589
    const/4 v8, 0x0

    const v9, 0x1020028

    const/4 v10, 0x0

    const v11, 0x1040409

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7592
    :cond_a
    const/4 v8, 0x0

    const v9, 0x102001f

    const/4 v10, 0x0

    const v11, 0x104000d

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x61

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7595
    const/4 v0, 0x1

    .line 7598
    :cond_b
    iget-object v8, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v8, v8, Landroid/text/Spanned;

    if-eqz v8, :cond_c

    .line 7599
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v6

    .line 7600
    .local v6, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v5

    .line 7602
    .local v5, selEnd:I
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 7603
    .local v4, min:I
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 7605
    .local v3, max:I
    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v8, Landroid/text/style/URLSpan;

    invoke-interface {v2, v4, v3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 7607
    .local v7, urls:[Landroid/text/style/URLSpan;
    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_c

    .line 7608
    const/4 v8, 0x0

    const v9, 0x1020023

    const/4 v10, 0x0

    const v11, 0x1040002

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 7610
    const/4 v0, 0x1

    .line 7614
    .end local v3           #max:I
    .end local v4           #min:I
    .end local v5           #selEnd:I
    .end local v6           #selStart:I
    .end local v7           #urls:[Landroid/text/style/URLSpan;
    :cond_c
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 7615
    const/4 v8, 0x0

    const v9, 0x1020022

    const/4 v10, 0x0

    const v11, 0x104000b

    invoke-interface {p1, v8, v9, v10, v11}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v8

    invoke-interface {v8, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v8

    const/16 v9, 0x76

    invoke-interface {v8, v9}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 7618
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 7674
    :cond_d
    invoke-virtual {p0}, Landroid/widget/TextView;->isInputMethodTarget()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->isIMEChangable()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 7675
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 7676
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_6

    .line 7677
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .parameter "outAttrs"

    .prologue
    const/high16 v3, 0x4000

    .line 4658
    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4659
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-nez v1, :cond_0

    .line 4660
    new-instance v1, Landroid/widget/TextView$InputMethodState;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InputMethodState;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4662
    :cond_0
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 4663
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v1, :cond_3

    .line 4664
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4665
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 4666
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    .line 4667
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget v1, v1, Landroid/widget/TextView$InputContentType;->imeActionId:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->actionId:I

    .line 4668
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v1, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 4672
    :goto_0
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_1

    .line 4674
    const/16 v1, 0x82

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 4677
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x5

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4683
    :goto_1
    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4684
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4687
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v2, 0x2000f

    and-int/2addr v1, v2

    const v2, 0x20001

    if-ne v1, v2, :cond_2

    .line 4692
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/2addr v1, v3

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4694
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    iput-object v1, p1, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    .line 4695
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_5

    .line 4696
    new-instance v0, Lcom/android/internal/widget/EditableInputConnection;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/EditableInputConnection;-><init>(Landroid/widget/TextView;)V

    .line 4697
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 4698
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 4699
    iget v1, p0, Landroid/widget/TextView;->mInputType:I

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->getCursorCapsMode(I)I

    move-result v1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    move-object v1, v0

    .line 4703
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_2
    return-object v1

    .line 4670
    :cond_3
    const/4 v1, 0x0

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_0

    .line 4681
    :cond_4
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v1, v1, 0x6

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    .line 4703
    :cond_5
    const/4 v1, 0x0

    goto :goto_2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 3859
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 3861
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3862
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_2

    .line 3863
    iget v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eqz v1, :cond_0

    .line 3864
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 3865
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 3867
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_1

    .line 3868
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3870
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_2

    .line 3871
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 3875
    :cond_2
    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 3876
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 3879
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v1, :cond_4

    .line 3880
    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v1}, Landroid/widget/TextView$Blink;->cancel()V

    .line 3883
    :cond_4
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_5

    .line 3884
    iget-object v1, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v1}, Landroid/widget/TextView$CursorController;->onDetached()V

    .line 3887
    :cond_5
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v1, :cond_6

    .line 3888
    iget-object v1, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v1}, Landroid/widget/TextView$CursorController;->onDetached()V

    .line 3891
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 3892
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 46
    .parameter "canvas"

    .prologue
    .line 3981
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 3984
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 3986
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v24

    .line 3987
    .local v24, compoundPaddingLeft:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v26

    .line 3988
    .local v26, compoundPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v25

    .line 3989
    .local v25, compoundPaddingRight:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v23

    .line 3990
    .local v23, compoundPaddingBottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v39, v0

    .line 3991
    .local v39, scrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v40, v0

    .line 3992
    .local v40, scrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v38, v0

    .line 3993
    .local v38, right:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v35, v0

    .line 3994
    .local v35, left:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v17, v0

    .line 3995
    .local v17, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v42, v0

    .line 3997
    .local v42, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object/from16 v28, v0

    .line 3998
    .local v28, dr:Landroid/widget/TextView$Drawables;
    if-eqz v28, :cond_3

    .line 4004
    sub-int v6, v17, v42

    sub-int v6, v6, v23

    sub-int v45, v6, v26

    .line 4005
    .local v45, vspace:I
    sub-int v6, v38, v35

    sub-int v6, v6, v25

    sub-int v32, v6, v24

    .line 4009
    .local v32, hspace:I
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_0

    .line 4010
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4011
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move v6, v0

    add-int v6, v6, v39

    int-to-float v6, v6

    add-int v7, v40, v26

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    move v8, v0

    sub-int v8, v45, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4014
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4015
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4020
    :cond_0
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 4021
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4022
    add-int v6, v39, v38

    sub-int v6, v6, v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    add-int v7, v40, v26

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    move v8, v0

    sub-int v8, v45, v8

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4024
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4025
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4030
    :cond_1
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_2

    .line 4031
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4032
    add-int v6, v39, v24

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move v7, v0

    sub-int v7, v32, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move v7, v0

    add-int v7, v7, v40

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4034
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4035
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4040
    :cond_2
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    if-eqz v6, :cond_3

    .line 4041
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4042
    add-int v6, v39, v24

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move v7, v0

    sub-int v7, v32, v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    int-to-float v6, v6

    add-int v7, v40, v17

    sub-int v7, v7, v42

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move v8, v0

    sub-int/2addr v7, v8

    move-object/from16 v0, v28

    iget v0, v0, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    move v8, v0

    sub-int/2addr v7, v8

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4045
    move-object/from16 v0, v28

    iget-object v0, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4046
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4050
    .end local v32           #hspace:I
    .end local v45           #vspace:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mPreDrawState:I

    move v6, v0

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 4051
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v36

    .line 4052
    .local v36, observer:Landroid/view/ViewTreeObserver;
    if-eqz v36, :cond_4

    .line 4053
    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 4054
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mPreDrawState:I

    .line 4058
    .end local v36           #observer:Landroid/view/ViewTreeObserver;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurTextColor:I

    move/from16 v22, v0

    .line 4060
    .local v22, color:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    if-nez v6, :cond_5

    .line 4061
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 4064
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object/from16 v34, v0

    .line 4065
    .local v34, layout:Landroid/text/Layout;
    move/from16 v27, v22

    .line 4067
    .local v27, cursorcolor:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v6, v0

    if-eqz v6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_7

    .line 4068
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    move-object v6, v0

    if-eqz v6, :cond_6

    .line 4069
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mCurHintTextColor:I

    move/from16 v22, v0

    .line 4072
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object/from16 v34, v0

    .line 4075
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 4076
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v7

    iput-object v7, v6, Landroid/text/TextPaint;->drawableState:[I

    .line 4078
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 4083
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v30

    .line 4084
    .local v30, extendedPaddingTop:I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getExtendedPaddingBottom()I

    move-result v29

    .line 4086
    .local v29, extendedPaddingBottom:I
    add-int v6, v24, v39

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    .line 4087
    .local v19, clipLeft:F
    add-int v6, v30, v40

    move v0, v6

    int-to-float v0, v0

    move/from16 v21, v0

    .line 4088
    .local v21, clipTop:F
    sub-int v6, v38, v35

    sub-int v6, v6, v25

    add-int v6, v6, v39

    move v0, v6

    int-to-float v0, v0

    move/from16 v20, v0

    .line 4089
    .local v20, clipRight:F
    sub-int v6, v17, v42

    sub-int v6, v6, v29

    add-int v6, v6, v40

    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    .line 4091
    .local v18, clipBottom:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v6, v0

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_8

    .line 4092
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDx:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v19, v19, v6

    .line 4093
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDx:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v20, v20, v6

    .line 4095
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDy:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    sub-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    add-float v21, v21, v6

    .line 4096
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowDy:F

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mShadowRadius:F

    move v8, v0

    add-float/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    add-float v18, v18, v6

    .line 4099
    :cond_8
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 4101
    const/16 v44, 0x0

    .line 4102
    .local v44, voffsetText:I
    const/16 v43, 0x0

    .line 4107
    .local v43, voffsetCursor:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v6, v0

    and-int/lit8 v6, v6, 0x70

    const/16 v7, 0x30

    if-eq v6, v7, :cond_9

    .line 4108
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v44

    .line 4109
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/widget/TextView;->getVerticalOffset(Z)I

    move-result v43

    .line 4111
    :cond_9
    move/from16 v0, v24

    int-to-float v0, v0

    move v6, v0

    add-int v7, v30, v44

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4114
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v6, v0

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v7, :cond_b

    .line 4115
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mSingleLine:Z

    move v6, v0

    if-nez v6, :cond_a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->canMarquee()Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mGravity:I

    move v6, v0

    and-int/lit8 v6, v6, 0x7

    const/4 v7, 0x3

    if-eq v6, v7, :cond_a

    .line 4117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/text/Layout;->getLineRight(I)F

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v8, v0

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    sub-float/2addr v6, v7

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4121
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->isRunning()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 4122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    iget v6, v6, Landroid/widget/TextView$Marquee;->mScroll:F

    neg-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4126
    :cond_b
    const/16 v31, 0x0

    .line 4127
    .local v31, highlight:Landroid/graphics/Path;
    const/4 v7, -0x1

    .local v7, selStart:I
    const/4 v8, -0x1

    .line 4135
    .local v8, selEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v6, v0

    if-eqz v6, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isPressed()Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mEnableSelection:Z

    move v6, v0

    if-eqz v6, :cond_10

    .line 4136
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 4137
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 4139
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mCursorVisible:Z

    move v6, v0

    if-eqz v6, :cond_10

    if-ltz v7, :cond_10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 4140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    if-nez v6, :cond_e

    .line 4141
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    .line 4143
    :cond_e
    if-ne v7, v8, :cond_17

    .line 4144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/widget/TextView;->mShowCursor:J

    move-wide v13, v0

    sub-long/2addr v11, v13

    const-wide/16 v13, 0x3e8

    rem-long/2addr v11, v13

    const-wide/16 v13, 0x1f4

    cmp-long v6, v11, v13

    if-gez v6, :cond_10

    .line 4145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    move v6, v0

    if-eqz v6, :cond_f

    .line 4146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 4147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v10, v0

    invoke-virtual {v6, v7, v9, v10}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 4148
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 4152
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sget-object v9, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    .line 4184
    :cond_10
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    move-object/from16 v33, v0

    .line 4185
    .local v33, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v33, :cond_15

    move-object/from16 v0, v33

    iget v0, v0, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    move v6, v0

    if-nez v6, :cond_15

    .line 4186
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v5

    .line 4187
    .local v5, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v5, :cond_15

    .line 4188
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 4189
    const/16 v37, 0x0

    .line 4190
    .local v37, reported:Z
    move-object/from16 v0, v33

    iget-boolean v0, v0, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    move v6, v0

    if-nez v6, :cond_11

    move-object/from16 v0, v33

    iget-boolean v0, v0, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    move v6, v0

    if-eqz v6, :cond_12

    .line 4194
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->reportExtractedText()Z

    move-result v37

    .line 4196
    :cond_12
    if-nez v37, :cond_14

    if-eqz v31, :cond_14

    .line 4197
    const/4 v9, -0x1

    .line 4198
    .local v9, candStart:I
    const/4 v10, -0x1

    .line 4199
    .local v10, candEnd:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v6, v0

    instance-of v6, v6, Landroid/text/Spannable;

    if-eqz v6, :cond_13

    .line 4200
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object/from16 v41, v0

    check-cast v41, Landroid/text/Spannable;

    .line 4201
    .local v41, sp:Landroid/text/Spannable;
    invoke-static/range {v41 .. v41}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    move-result v9

    .line 4202
    invoke-static/range {v41 .. v41}, Lcom/android/internal/widget/EditableInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    move-result v10

    .end local v41           #sp:Landroid/text/Spannable;
    :cond_13
    move-object/from16 v6, p0

    .line 4204
    invoke-virtual/range {v5 .. v10}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 4208
    .end local v9           #candStart:I
    .end local v10           #candEnd:I
    .end local v37           #reported:Z
    :cond_14
    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isWatchingCursor(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_15

    if-eqz v31, :cond_15

    .line 4209
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    const/4 v7, 0x1

    move-object/from16 v0, v31

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 4210
    .end local v7           #selStart:I
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v8, v0

    .end local v8           #selEnd:I
    const/4 v9, 0x1

    const/4 v10, 0x0

    aput v10, v8, v9

    aput v10, v6, v7

    .line 4212
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v7, v0

    invoke-virtual {v6, v7}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4213
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpOffset:[F

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 4215
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v6, v0

    const/4 v7, 0x0

    sub-int v8, v43, v44

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/graphics/RectF;->offset(FF)V

    .line 4217
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/RectF;->left:F

    float-to-double v11, v7

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v7, v11

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v8, v0

    iget v8, v8, Landroid/graphics/RectF;->top:F

    float-to-double v11, v8

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v8, v11

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/RectF;->right:F

    float-to-double v11, v9

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v9, v11

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mTmpRectF:Landroid/graphics/RectF;

    move-object v10, v0

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    float-to-double v11, v10

    const-wide/high16 v13, 0x3fe0

    add-double/2addr v11, v13

    double-to-int v10, v11

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    .line 4222
    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v13, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v14, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    iget v15, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/widget/TextView$InputMethodState;->mCursorRectInWindow:Landroid/graphics/Rect;

    move-object v6, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object v11, v5

    move-object/from16 v12, p0

    invoke-virtual/range {v11 .. v16}, Landroid/view/inputmethod/InputMethodManager;->updateCursor(Landroid/view/View;IIII)V

    .line 4229
    .end local v5           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sub-int v7, v43, v44

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 4231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    if-eqz v6, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->shouldDrawGhost()Z

    move-result v6

    if-eqz v6, :cond_16

    .line 4232
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMarquee:Landroid/widget/TextView$Marquee;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/widget/TextView$Marquee;->getGhostOffset()F

    move-result v6

    float-to-int v6, v6

    int-to-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4233
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sub-int v7, v43, v44

    move-object/from16 v0, v34

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 4242
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 4244
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->updateCursorControllerPositions()V

    .line 4245
    return-void

    .line 4158
    .end local v33           #ims:Landroid/widget/TextView$InputMethodState;
    .restart local v7       #selStart:I
    .restart local v8       #selEnd:I
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    move v6, v0

    if-eqz v6, :cond_18

    .line 4159
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 4160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object v9, v0

    invoke-virtual {v6, v7, v8, v9}, Landroid/text/Layout;->getSelectionPath(IILandroid/graphics/Path;)V

    .line 4161
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 4165
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mHighlightColor:I

    move v9, v0

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 4166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPaint:Landroid/graphics/Paint;

    move-object v6, v0

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4168
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHighlightPath:Landroid/graphics/Path;

    move-object/from16 v31, v0

    goto/16 :goto_0
.end method

.method public onEditorAction(I)V
    .locals 23
    .parameter "actionCode"

    .prologue
    .line 3224
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    move-object/from16 v20, v0

    .line 3225
    .local v20, ict:Landroid/widget/TextView$InputContentType;
    if-eqz v20, :cond_3

    .line 3226
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 3227
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3271
    :cond_0
    :goto_0
    return-void

    .line 3238
    :cond_1
    const/4 v4, 0x5

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_2

    .line 3239
    const/16 v4, 0x82

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v22

    .line 3240
    .local v22, v:Landroid/view/View;
    if-eqz v22, :cond_0

    .line 3241
    const/16 v4, 0x82

    move-object/from16 v0, v22

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3242
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3248
    .end local v22           #v:Landroid/view/View;
    :cond_2
    const/4 v4, 0x6

    move/from16 v0, p1

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 3249
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v21

    .line 3250
    .local v21, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v21, :cond_0

    .line 3251
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 3257
    .end local v21           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v19

    .line 3258
    .local v19, h:Landroid/os/Handler;
    if-eqz v19, :cond_0

    .line 3259
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 3260
    .local v5, eventTime:J
    const/16 v16, 0x3f3

    new-instance v4, Landroid/view/KeyEvent;

    const/4 v9, 0x0

    const/16 v10, 0x42

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x16

    move-wide v7, v5

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    move/from16 v1, v16

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3265
    const/16 v4, 0x3f3

    new-instance v7, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    const/4 v12, 0x1

    const/16 v13, 0x42

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x16

    move-wide v10, v5

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v19

    move v1, v4

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    move-object/from16 v0, v19

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public onEndBatchEdit()V
    .locals 0

    .prologue
    .line 4992
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .prologue
    .line 6654
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 6657
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 6658
    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 11
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6662
    iget-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    if-eqz v0, :cond_0

    .line 6664
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 6761
    :goto_0
    return-void

    .line 6668
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 6670
    invoke-virtual {p0}, Landroid/widget/TextView;->ensureEndedBatchEdit()V

    .line 6672
    if-eqz p1, :cond_d

    .line 6673
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    .line 6674
    .local v9, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v8

    .line 6678
    .local v8, selEnd:I
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_b

    if-nez v9, :cond_b

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne v8, v0, :cond_b

    move v6, v3

    .line 6680
    .local v6, isFocusHighlighted:Z
    :goto_1
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_c

    if-nez v6, :cond_c

    move v0, v3

    :goto_2
    iput-boolean v0, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 6682
    iget-boolean v0, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    if-eqz v0, :cond_1

    if-ltz v9, :cond_1

    if-gez v8, :cond_7

    .line 6685
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->getLastTapPosition()I

    move-result v7

    .line 6686
    .local v7, lastTapPosition:I
    if-ltz v7, :cond_2

    .line 6687
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v7}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 6690
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_3

    .line 6691
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p2}, Landroid/text/method/MovementMethod;->onTakeFocus(Landroid/widget/TextView;Landroid/text/Spannable;I)V

    .line 6699
    :cond_3
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    if-eqz v0, :cond_5

    :cond_4
    if-ltz v9, :cond_5

    if-ltz v8, :cond_5

    .line 6710
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-static {v0, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6713
    :cond_5
    iget-boolean v0, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    if-eqz v0, :cond_6

    .line 6714
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {v0, v2, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6717
    :cond_6
    iput-boolean v3, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 6720
    .end local v7           #lastTapPosition:I
    :cond_7
    iput-boolean v2, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    .line 6721
    iput-boolean v2, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6723
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_8

    .line 6724
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spannable;

    .line 6725
    .local v10, sp:Landroid/text/Spannable;
    invoke-static {v10}, Landroid/text/method/MetaKeyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 6728
    .end local v10           #sp:Landroid/text/Spannable;
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6730
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_9

    .line 6731
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    .line 6754
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_9
    :goto_3
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 6756
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_a

    .line 6757
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/text/method/TransformationMethod;->onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V

    .line 6760
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .restart local v8       #selEnd:I
    .restart local v9       #selStart:I
    :cond_b
    move v6, v2

    .line 6678
    goto/16 :goto_1

    .restart local v6       #isFocusHighlighted:Z
    :cond_c
    move v0, v2

    .line 6680
    goto :goto_2

    .line 6734
    .end local v6           #isFocusHighlighted:Z
    .end local v8           #selEnd:I
    .end local v9           #selStart:I
    :cond_d
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_e

    .line 6735
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 6738
    :cond_e
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 6740
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 6741
    instance-of v0, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v0, :cond_f

    .line 6744
    iput-boolean v2, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 6749
    :goto_4
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_9

    .line 6750
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    check-cast v0, Landroid/widget/TextView$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/TextView$SelectionModifierCursorController;->resetTouchOffsets()V

    goto :goto_3

    .line 6746
    :cond_f
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    goto :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 4351
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v0

    .line 4352
    .local v0, which:I
    if-nez v0, :cond_0

    .line 4354
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 4357
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4362
    const/4 v3, 0x0

    invoke-static {p3, v3}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    .line 4364
    .local v0, down:Landroid/view/KeyEvent;
    invoke-direct {p0, p1, v0, p3}, Landroid/widget/TextView;->doKeyDown(ILandroid/view/KeyEvent;Landroid/view/KeyEvent;)I

    move-result v2

    .line 4365
    .local v2, which:I
    if-nez v2, :cond_0

    .line 4367
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v3

    .line 4400
    :goto_0
    return v3

    .line 4369
    :cond_0
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v3, v5

    .line 4371
    goto :goto_0

    .line 4374
    :cond_1
    add-int/lit8 p2, p2, -0x1

    .line 4381
    invoke-static {p3, v5}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 4382
    .local v1, up:Landroid/view/KeyEvent;
    if-ne v2, v5, :cond_4

    .line 4383
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4384
    :goto_1
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_2

    .line 4385
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/KeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4386
    iget-object v4, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Editable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    goto :goto_1

    .line 4388
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v3, :cond_3

    .line 4389
    invoke-virtual {p0, v6, v6}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    :cond_3
    move v3, v5

    .line 4400
    goto :goto_0

    .line 4392
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 4393
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4394
    :goto_2
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_3

    .line 4395
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v0}, Landroid/text/method/MovementMethod;->onKeyDown(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    .line 4396
    iget-object v4, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spannable;

    invoke-interface {v4, p0, v3, p1, v1}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    goto :goto_2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 9099
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 9100
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 9101
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    .line 9104
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 9105
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 9107
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 7241
    sparse-switch p1, :sswitch_data_0

    .line 7271
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 7243
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7244
    const v0, 0x102001f

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    .line 7250
    :sswitch_1
    invoke-direct {p0}, Landroid/widget/TextView;->canCut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7251
    const v0, 0x1020020

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    .line 7257
    :sswitch_2
    invoke-direct {p0}, Landroid/widget/TextView;->canCopy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7258
    const v0, 0x1020021

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    .line 7264
    :sswitch_3
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7265
    const v0, 0x1020022

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0

    .line 7241
    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x1f -> :sswitch_2
        0x32 -> :sswitch_3
        0x34 -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x82

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 4557
    invoke-virtual {p0}, Landroid/widget/TextView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4558
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    .line 4650
    :goto_0
    return v2

    .line 4561
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 4562
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 4564
    sparse-switch p1, :sswitch_data_0

    .line 4642
    :cond_1
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    if-eqz v2, :cond_8

    .line 4643
    iget-object v3, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Editable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/KeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    .line 4644
    goto :goto_0

    .line 4566
    :sswitch_0
    iput-boolean v4, p0, Landroid/widget/TextView;->mDPadCenterIsDown:Z

    .line 4576
    iget-object v2, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_2

    .line 4577
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Editable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4579
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4581
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v0, p0, v4}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4584
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_0

    .line 4587
    :sswitch_1
    iput-boolean v4, p0, Landroid/widget/TextView;->mEnterKeyIsDown:Z

    .line 4588
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-boolean v2, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    if-eqz v2, :cond_3

    .line 4591
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-boolean v4, v2, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 4592
    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-interface {v2, p0, v4, p2}, Landroid/widget/TextView$OnEditorActionListener;->onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v5

    .line 4594
    goto :goto_0

    .line 4598
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_4

    invoke-direct {p0}, Landroid/widget/TextView;->shouldAdvanceFocusOnEnter()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4610
    :cond_4
    iget-object v2, p0, Landroid/view/View;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v2, :cond_7

    .line 4611
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->focusSearch(I)Landroid/view/View;

    move-result-object v1

    .line 4613
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_6

    .line 4614
    invoke-virtual {v1, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 4615
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4624
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move v2, v5

    .line 4625
    goto/16 :goto_0

    .line 4626
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    .line 4630
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 4631
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_7

    .line 4632
    invoke-virtual {p0}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4637
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #v:Landroid/view/View;
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 4646
    :cond_8
    iget-object v2, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v2, :cond_9

    .line 4647
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v2, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spannable;

    invoke-interface {v3, p0, v2, p1, p2}, Landroid/text/method/MovementMethod;->onKeyUp(Landroid/widget/TextView;Landroid/text/Spannable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v5

    .line 4648
    goto/16 :goto_0

    .line 4650
    :cond_9
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v2

    goto/16 :goto_0

    .line 4564
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 24
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 5291
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v22

    .line 5292
    .local v22, widthMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 5293
    .local v15, heightMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v23

    .line 5294
    .local v23, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 5299
    .local v16, heightSize:I
    sget-object v6, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 5300
    .local v6, boring:Landroid/text/BoringLayout$Metrics;
    sget-object v7, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    .line 5302
    .local v7, hintBoring:Landroid/text/BoringLayout$Metrics;
    const/4 v10, -0x1

    .line 5303
    .local v10, des:I
    const/4 v13, 0x0

    .line 5305
    .local v13, fromexisting:Z
    const/high16 v3, 0x4000

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_6

    .line 5307
    move/from16 v21, v23

    .line 5391
    .local v21, width:I
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v4, v3, v4

    .line 5392
    .local v4, want:I
    move/from16 v20, v4

    .line 5393
    .local v20, unpaddedWidth:I
    move v5, v4

    .line 5395
    .local v5, hintWant:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    move v3, v0

    if-eqz v3, :cond_1

    .line 5396
    const/16 v4, 0x4000

    .line 5398
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    if-nez v3, :cond_16

    move/from16 v18, v5

    .line 5400
    .local v18, hintWidth:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    if-nez v3, :cond_17

    .line 5401
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int v8, v3, v8

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 5419
    :cond_2
    :goto_2
    const/high16 v3, 0x4000

    if-ne v15, v3, :cond_1b

    .line 5421
    move/from16 v14, v16

    .line 5422
    .local v14, height:I
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 5434
    :cond_3
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v3

    sub-int v3, v14, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v4

    .end local v4           #want:I
    sub-int v19, v3, v4

    .line 5435
    .local v19, unpaddedHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move v4, v0

    if-le v3, v4, :cond_4

    .line 5436
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaximum:I

    move v4, v0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    move/from16 v0, v19

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 5443
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    move-object v3, v0

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    move v0, v3

    move/from16 v1, v20

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getHeight()I

    move-result v3

    move v0, v3

    move/from16 v1, v19

    if-le v0, v1, :cond_1c

    .line 5446
    :cond_5
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 5451
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v21

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 5452
    return-void

    .line 5309
    .end local v5           #hintWant:I
    .end local v14           #height:I
    .end local v18           #hintWidth:I
    .end local v19           #unpaddedHeight:I
    .end local v20           #unpaddedWidth:I
    .end local v21           #width:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    if-eqz v3, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_7

    .line 5310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-static {v3}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v10

    .line 5313
    :cond_7
    if-gez v10, :cond_11

    .line 5314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v6

    .line 5315
    if-eqz v6, :cond_8

    .line 5316
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mBoring:Landroid/text/BoringLayout$Metrics;

    .line 5322
    :cond_8
    :goto_5
    if-eqz v6, :cond_9

    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v6, v3, :cond_12

    .line 5323
    :cond_9
    if-gez v10, :cond_a

    .line 5324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    float-to-int v10, v3

    .line 5327
    :cond_a
    move/from16 v21, v10

    .line 5332
    .restart local v21       #width:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    move-object v12, v0

    .line 5333
    .local v12, dr:Landroid/widget/TextView$Drawables;
    if-eqz v12, :cond_b

    .line 5334
    iget v3, v12, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5335
    iget v3, v12, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5338
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    if-eqz v3, :cond_10

    .line 5339
    const/16 v17, -0x1

    .line 5342
    .local v17, hintDes:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_c

    .line 5343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-static {v3}, Landroid/widget/TextView;->desired(Landroid/text/Layout;)I

    move-result v17

    .line 5346
    :cond_c
    if-gez v17, :cond_d

    .line 5347
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    move-object v5, v0

    invoke-static {v3, v4, v5}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v7

    .line 5348
    if-eqz v7, :cond_d

    .line 5349
    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/TextView;->mHintBoring:Landroid/text/BoringLayout$Metrics;

    .line 5353
    :cond_d
    if-eqz v7, :cond_e

    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    if-ne v7, v3, :cond_13

    .line 5354
    :cond_e
    if-gez v17, :cond_f

    .line 5355
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    invoke-static {v3}, Landroid/util/FloatMath;->ceil(F)F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v17, v0

    .line 5359
    :cond_f
    move/from16 v18, v17

    .line 5364
    .restart local v18       #hintWidth:I
    :goto_7
    move/from16 v0, v18

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    .line 5365
    move/from16 v21, v18

    .line 5369
    .end local v17           #hintDes:I
    .end local v18           #hintWidth:I
    :cond_10
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int v21, v21, v3

    .line 5371
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidthMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_14

    .line 5372
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidth:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    mul-int/2addr v3, v4

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 5377
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidthMode:I

    move v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_15

    .line 5378
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidth:I

    move v3, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v4

    mul-int/2addr v3, v4

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5384
    :goto_9
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getSuggestedMinimumWidth()I

    move-result v3

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 5386
    const/high16 v3, -0x8000

    move/from16 v0, v22

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 5387
    move/from16 v0, v23

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto/16 :goto_0

    .line 5319
    .end local v12           #dr:Landroid/widget/TextView$Drawables;
    .end local v21           #width:I
    :cond_11
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 5329
    :cond_12
    move-object v0, v6

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v21, v0

    .restart local v21       #width:I
    goto/16 :goto_6

    .line 5361
    .restart local v12       #dr:Landroid/widget/TextView$Drawables;
    .restart local v17       #hintDes:I
    :cond_13
    move-object v0, v7

    iget v0, v0, Landroid/text/BoringLayout$Metrics;->width:I

    move/from16 v18, v0

    .restart local v18       #hintWidth:I
    goto :goto_7

    .line 5374
    .end local v17           #hintDes:I
    .end local v18           #hintWidth:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMaxWidth:I

    move v3, v0

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto :goto_8

    .line 5380
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/TextView;->mMinWidth:I

    move v3, v0

    move/from16 v0, v21

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    goto :goto_9

    .line 5398
    .end local v12           #dr:Landroid/widget/TextView$Drawables;
    .restart local v4       #want:I
    .restart local v5       #hintWant:I
    .restart local v20       #unpaddedWidth:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    move/from16 v18, v3

    goto/16 :goto_1

    .line 5403
    .restart local v18       #hintWidth:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    if-ne v3, v4, :cond_18

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v8

    sub-int v8, v21, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    if-eq v3, v8, :cond_2

    .line 5406
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    move-object v3, v0

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object v3, v0

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/text/Layout;->getWidth()I

    move-result v3

    if-le v4, v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    instance-of v3, v3, Landroid/text/BoringLayout;

    if-nez v3, :cond_19

    if-eqz v13, :cond_1a

    if-ltz v10, :cond_1a

    if-gt v10, v4, :cond_1a

    .line 5410
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    move-object v3, v0

    invoke-virtual {v3, v4}, Landroid/text/Layout;->increaseWidthTo(I)V

    goto/16 :goto_2

    .line 5412
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v3

    sub-int v3, v21, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v8

    sub-int v8, v3, v8

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    goto/16 :goto_2

    .line 5424
    :cond_1b
    invoke-direct/range {p0 .. p0}, Landroid/widget/TextView;->getDesiredHeight()I

    move-result v11

    .line 5426
    .local v11, desired:I
    move v14, v11

    .line 5427
    .restart local v14       #height:I
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/TextView;->mDesiredHeightAtMeasure:I

    .line 5429
    const/high16 v3, -0x8000

    if-ne v15, v3, :cond_3

    .line 5430
    move v0, v11

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto/16 :goto_3

    .line 5448
    .end local v4           #want:I
    .end local v11           #desired:I
    .restart local v19       #unpaddedHeight:I
    :cond_1c
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->scrollTo(II)V

    goto/16 :goto_4
.end method

.method public onPreDraw()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3775
    iget v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    if-eq v3, v5, :cond_0

    move v3, v5

    .line 3832
    :goto_0
    return v3

    .line 3779
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v3, :cond_1

    .line 3780
    invoke-direct {p0}, Landroid/widget/TextView;->assumeLayout()V

    .line 3783
    :cond_1
    const/4 v0, 0x0

    .line 3785
    .local v0, changed:Z
    const/4 v2, 0x0

    .line 3786
    .local v2, selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    iget-object v3, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v3, :cond_2

    .line 3787
    iget-object v2, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    .end local v2           #selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    check-cast v2, Landroid/widget/TextView$SelectionModifierCursorController;

    .line 3792
    .restart local v2       #selectionController:Landroid/widget/TextView$SelectionModifierCursorController;
    :cond_2
    iget-object v3, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v3, :cond_8

    .line 3797
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 3798
    .local v1, curs:I
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView$SelectionModifierCursorController;->isSelectionStartDragged()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3799
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 3807
    :cond_3
    if-gez v1, :cond_4

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x70

    const/16 v4, 0x50

    if-ne v3, v4, :cond_4

    .line 3809
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 3812
    :cond_4
    if-ltz v1, :cond_5

    .line 3813
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->bringPointIntoView(I)Z

    move-result v0

    .line 3825
    .end local v1           #curs:I
    :cond_5
    :goto_1
    iget-boolean v3, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    if-nez v3, :cond_6

    instance-of v3, p0, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v3, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 3827
    :cond_6
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 3828
    iput-boolean v6, p0, Landroid/widget/TextView;->mCreatedWithASelection:Z

    .line 3831
    :cond_7
    const/4 v3, 0x2

    iput v3, p0, Landroid/widget/TextView;->mPreDrawState:I

    .line 3832
    if-nez v0, :cond_9

    move v3, v5

    goto :goto_0

    .line 3816
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->bringTextIntoView()Z

    move-result v0

    goto :goto_1

    :cond_9
    move v3, v6

    .line 3832
    goto :goto_0
.end method

.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1
    .parameter "action"
    .parameter "data"

    .prologue
    .line 5005
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    .line 2507
    instance-of v4, p1, Landroid/widget/TextView$SavedState;

    if-nez v4, :cond_1

    .line 2508
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2556
    :cond_0
    :goto_0
    return-void

    .line 2512
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView$SavedState;

    move-object v3, v0

    .line 2513
    .local v3, ss:Landroid/widget/TextView$SavedState;
    invoke-virtual {v3}, Landroid/widget/TextView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v4

    invoke-super {p0, v4}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 2516
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_2

    .line 2517
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2520
    :cond_2
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-ltz v4, :cond_5

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-ltz v4, :cond_5

    .line 2521
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v4, v4, Landroid/text/Spannable;

    if-eqz v4, :cond_5

    .line 2522
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2524
    .local v1, len:I
    iget v4, v3, Landroid/widget/TextView$SavedState;->selStart:I

    if-gt v4, v1, :cond_3

    iget v4, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    if-le v4, v1, :cond_6

    .line 2525
    :cond_3
    const-string v2, ""

    .line 2527
    .local v2, restored:Ljava/lang/String;
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_4

    .line 2528
    const-string v2, "(restored) "

    .line 2531
    :cond_4
    const-string v4, "TextView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saved cursor position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selStart:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " out of range for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "text "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2545
    .end local v1           #len:I
    .end local v2           #restored:Ljava/lang/String;
    :cond_5
    :goto_1
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 2546
    iget-object v4, v3, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    goto :goto_0

    .line 2535
    .restart local v1       #len:I
    :cond_6
    iget-object v4, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spannable;

    iget v5, v3, Landroid/widget/TextView$SavedState;->selStart:I

    iget v6, v3, Landroid/widget/TextView$SavedState;->selEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2538
    iget-boolean v4, v3, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    if-eqz v4, :cond_5

    .line 2539
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/widget/TextView;->mFrozenWithFocus:Z

    goto :goto_1
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 13

    .prologue
    .line 2444
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    .line 2447
    .local v9, superState:Landroid/os/Parcelable;
    iget-boolean v5, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 2448
    .local v5, save:Z
    const/4 v8, 0x0

    .line 2449
    .local v8, start:I
    const/4 v2, 0x0

    .line 2451
    .local v2, end:I
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v10, :cond_1

    .line 2452
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v8

    .line 2453
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    .line 2454
    if-gez v8, :cond_0

    if-ltz v2, :cond_1

    .line 2456
    :cond_0
    const/4 v5, 0x1

    .line 2460
    :cond_1
    if-eqz v5, :cond_6

    .line 2461
    new-instance v7, Landroid/widget/TextView$SavedState;

    invoke-direct {v7, v9}, Landroid/widget/TextView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2463
    .local v7, ss:Landroid/widget/TextView$SavedState;
    iput v8, v7, Landroid/widget/TextView$SavedState;->selStart:I

    .line 2464
    iput v2, v7, Landroid/widget/TextView$SavedState;->selEnd:I

    .line 2466
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v10, v10, Landroid/text/Spanned;

    if-eqz v10, :cond_5

    .line 2475
    new-instance v6, Landroid/text/SpannableString;

    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {v6, v10}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2478
    .local v6, sp:Landroid/text/Spannable;
    const/4 v10, 0x0

    invoke-interface {v6}, Landroid/text/Spannable;->length()I

    move-result v11

    const-class v12, Landroid/widget/TextView$ChangeWatcher;

    invoke-interface {v6, v10, v11, v12}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TextView$ChangeWatcher;

    .local v0, arr$:[Landroid/widget/TextView$ChangeWatcher;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 2479
    .local v1, cw:Landroid/widget/TextView$ChangeWatcher;
    invoke-interface {v6, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 2478
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2482
    .end local v1           #cw:Landroid/widget/TextView$ChangeWatcher;
    :cond_2
    iput-object v6, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    .line 2487
    .end local v0           #arr$:[Landroid/widget/TextView$ChangeWatcher;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #sp:Landroid/text/Spannable;
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_3

    if-ltz v8, :cond_3

    if-ltz v2, :cond_3

    .line 2488
    const/4 v10, 0x1

    iput-boolean v10, v7, Landroid/widget/TextView$SavedState;->frozenWithFocus:Z

    .line 2491
    :cond_3
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->error:Ljava/lang/CharSequence;

    .line 2494
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v10, :cond_4

    .line 2495
    invoke-direct {p0}, Landroid/widget/TextView;->hideError()V

    :cond_4
    move-object v10, v7

    .line 2502
    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :goto_2
    return-object v10

    .line 2484
    .restart local v7       #ss:Landroid/widget/TextView$SavedState;
    :cond_5
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Landroid/widget/TextView$SavedState;->text:Ljava/lang/CharSequence;

    goto :goto_1

    .end local v7           #ss:Landroid/widget/TextView$SavedState;
    :cond_6
    move-object v10, v9

    .line 2502
    goto :goto_2
.end method

.method protected onSelectionChanged(II)V
    .locals 0
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    .line 6331
    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .prologue
    .line 6646
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 6649
    iget-boolean v0, p0, Landroid/widget/TextView;->mDispatchTemporaryDetach:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mTemporaryDetach:Z

    .line 6650
    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6321
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 13
    .parameter "id"

    .prologue
    .line 7730
    const/4 v4, 0x0

    .line 7731
    .local v4, min:I
    iget-object v10, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 7733
    .local v3, max:I
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 7734
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 7735
    .local v7, selStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 7737
    .local v6, selEnd:I
    const/4 v10, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 7738
    const/4 v10, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 7741
    .end local v6           #selEnd:I
    .end local v7           #selStart:I
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "clipboard"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 7744
    .local v0, clip:Landroid/text/ClipboardManager;
    sparse-switch p1, :sswitch_data_0

    .line 7848
    const/4 v10, 0x0

    .end local p0
    .end local p1
    :goto_0
    return v10

    .line 7746
    .restart local p0
    .restart local p1
    :sswitch_0
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, Landroid/text/Spannable;

    const/4 v10, 0x0

    iget-object v11, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    invoke-static {p1, v10, v11}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7747
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 7748
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/TextView$CursorController;->show()V

    .line 7750
    iget-boolean v10, p0, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    if-eqz v10, :cond_2

    .line 7751
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-nez v10, :cond_1

    .line 7752
    new-instance v10, Landroid/widget/TextView$CursorControllerMenu;

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v10, p0, v11, p0}, Landroid/widget/TextView$CursorControllerMenu;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    .line 7753
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView$CursorControllerMenu;->setCursorControllerHeight(I)V

    .line 7755
    :cond_1
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 7756
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v10}, Landroid/widget/TextView$CursorControllerMenu;->showCursorControllerMenu()V

    .line 7757
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/TextView;->mLockCursorControllerMenu:Z

    .line 7760
    :cond_2
    const/4 v10, 0x1

    goto :goto_0

    .line 7763
    .restart local p1
    :sswitch_1
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 7764
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/TextView$CursorController;->show()V

    .line 7766
    iget-boolean v10, p0, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    if-eqz v10, :cond_4

    .line 7767
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-nez v10, :cond_3

    .line 7768
    new-instance v10, Landroid/widget/TextView$CursorControllerMenu;

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v10, p0, v11, p0}, Landroid/widget/TextView$CursorControllerMenu;-><init>(Landroid/widget/TextView;Landroid/content/Context;Landroid/widget/TextView;)V

    iput-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    .line 7769
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    iget-object v11, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iget v12, p0, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView$CursorControllerMenu;->setCursorControllerHeight(I)V

    .line 7771
    :cond_3
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView$CursorControllerMenu;->setLife(Z)V

    .line 7772
    iget-object v10, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v10}, Landroid/widget/TextView$CursorControllerMenu;->showCursorControllerMenu()V

    .line 7773
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/widget/TextView;->mLockCursorControllerMenu:Z

    .line 7776
    :cond_4
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 7779
    :sswitch_2
    iget-object v10, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v10, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7780
    iget-object p1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p1
    check-cast p1, Landroid/text/Editable;

    invoke-interface {p1, v4, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 7781
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7782
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 7785
    .restart local p1
    :sswitch_3
    iget-object v10, p0, Landroid/widget/TextView;->mTransformed:Ljava/lang/CharSequence;

    invoke-interface {v10, v4, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7786
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    .line 7787
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 7791
    :sswitch_4
    invoke-direct {p0}, Landroid/widget/TextView;->canPaste()Z

    move-result v10

    if-nez v10, :cond_5

    .line 7792
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 7796
    :cond_5
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 7799
    .local v5, paste:Ljava/lang/CharSequence;
    invoke-virtual {p0, v5}, Landroid/widget/TextView;->customPrepareSpacesAroundPaste(Ljava/lang/CharSequence;)V

    .line 7811
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 7812
    iget-object v10, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    if-eqz v10, :cond_6

    iget-boolean v10, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    if-nez v10, :cond_6

    .line 7813
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 7816
    :cond_6
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 7819
    .end local v5           #paste:Ljava/lang/CharSequence;
    :sswitch_5
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spanned;

    const-class v10, Landroid/text/style/URLSpan;

    invoke-interface {p0, v4, v3, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/URLSpan;

    .line 7820
    .local v8, urls:[Landroid/text/style/URLSpan;
    array-length v10, v8

    const/4 v11, 0x1

    if-ne v10, v11, :cond_7

    .line 7821
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v10}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 7823
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 7826
    .end local v8           #urls:[Landroid/text/style/URLSpan;
    .restart local p0
    :sswitch_6
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 7827
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_8

    .line 7828
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 7830
    :cond_8
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 7833
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_7
    invoke-direct {p0}, Landroid/widget/TextView;->getWordForDictionary()Ljava/lang/String;

    move-result-object v9

    .line 7834
    .local v9, word:Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 7835
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 7836
    .local v1, i:Landroid/content/Intent;
    const-string/jumbo v10, "word"

    invoke-virtual {v1, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7837
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v10

    const/high16 v11, 0x1000

    or-int/2addr v10, v11

    invoke-virtual {v1, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7838
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 7840
    .end local v1           #i:Landroid/content/Intent;
    :cond_9
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 7844
    .end local v9           #word:Ljava/lang/String;
    :sswitch_8
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 7744
    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_3
        0x1020022 -> :sswitch_4
        0x1020023 -> :sswitch_5
        0x1020024 -> :sswitch_6
        0x1020028 -> :sswitch_1
        0x102002a -> :sswitch_7
        0x102018b -> :sswitch_8
    .end sparse-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 6913
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 6916
    .local v0, action:I
    iput-boolean v11, p0, Landroid/widget/TextView;->mLockCursorControllerMenu:Z

    .line 6919
    invoke-virtual {p0}, Landroid/widget/TextView;->hasInsertionController()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 6920
    invoke-virtual {p0}, Landroid/widget/TextView;->getInsertionController()Landroid/widget/TextView$CursorController;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/widget/TextView$CursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6922
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 6923
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v9

    invoke-interface {v9, p1}, Landroid/widget/TextView$CursorController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6926
    :cond_1
    if-nez v0, :cond_2

    .line 6929
    iput-boolean v11, p0, Landroid/widget/TextView;->mTouchFocusSelected:Z

    .line 6930
    iput-boolean v11, p0, Landroid/widget/TextView;->mScrolled:Z

    .line 6933
    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 6940
    .local v8, result:Z
    iget-boolean v9, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    if-eqz v9, :cond_6

    if-ne v0, v12, :cond_6

    .line 6941
    iput-boolean v11, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    .line 7003
    :cond_3
    :goto_0
    if-eq v0, v12, :cond_4

    const/4 v9, 0x3

    if-ne v0, v9, :cond_5

    .line 7004
    :cond_4
    iput-boolean v11, p0, Landroid/widget/TextView;->mNoContextMenuOnUp:Z

    .line 7007
    :cond_5
    return v8

    .line 6942
    :cond_6
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-nez v9, :cond_7

    invoke-virtual {p0}, Landroid/widget/TextView;->onCheckIsTextEditor()Z

    move-result v9

    if-nez v9, :cond_7

    iget-boolean v9, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v9, :cond_3

    :cond_7
    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v9, v9, Landroid/text/Spannable;

    if-eqz v9, :cond_3

    iget-object v9, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v9, :cond_3

    .line 6943
    const/4 v2, 0x0

    .line 6946
    .local v2, handled:Z
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v7

    .line 6947
    .local v7, oldSelStart:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v6

    .line 6949
    .local v6, oldSelEnd:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    .line 6950
    .local v4, oldScrollX:I
    iget v5, p0, Landroid/view/View;->mScrollY:I

    .line 6952
    .local v5, oldScrollY:I
    iget-object v9, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v9, :cond_8

    .line 6953
    iget-object v10, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v9, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v9, Landroid/text/Spannable;

    invoke-interface {v10, p0, v9, p1}, Landroid/text/method/MovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 6956
    :cond_8
    invoke-direct {p0}, Landroid/widget/TextView;->isTextEditable()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 6957
    iget v9, p0, Landroid/view/View;->mScrollX:I

    if-ne v9, v4, :cond_9

    iget v9, p0, Landroid/view/View;->mScrollY:I

    if-eq v9, v5, :cond_a

    .line 6959
    :cond_9
    invoke-direct {p0}, Landroid/widget/TextView;->hideInsertionPointCursorController()V

    .line 6961
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 6964
    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v9, :cond_a

    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v9}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 6966
    iget-object v9, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v9}, Landroid/widget/TextView$CursorController;->updatePosition()V

    .line 6969
    :cond_a
    if-ne v0, v12, :cond_e

    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v9

    if-eqz v9, :cond_e

    iget-boolean v9, p0, Landroid/widget/TextView;->mScrolled:Z

    if-nez v9, :cond_e

    .line 6970
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "input_method"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 6973
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    .line 6974
    .local v1, csr:Landroid/widget/TextView$CommitSelectionReceiver;
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v9

    if-ne v9, v7, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v9

    if-ne v9, v6, :cond_b

    invoke-virtual {p0}, Landroid/widget/TextView;->didTouchFocusSelect()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 6976
    :cond_b
    new-instance v1, Landroid/widget/TextView$CommitSelectionReceiver;

    .end local v1           #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    invoke-direct {v1, p0, v7, v6}, Landroid/widget/TextView$CommitSelectionReceiver;-><init>(Landroid/widget/TextView;II)V

    .line 6982
    .restart local v1       #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    :cond_c
    iget-boolean v9, p0, Landroid/widget/TextView;->mByPassInputType:Z

    if-nez v9, :cond_d

    .line 6983
    const/4 v9, 0x0

    invoke-virtual {v3, p0, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    move-result v9

    or-int/2addr v2, v9

    .line 6990
    :cond_d
    invoke-direct {p0, v7, v6}, Landroid/widget/TextView;->onTapUpEvent(II)V

    .line 6993
    iget-object v9, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v9, :cond_e

    iget-object v9, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v9}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 6994
    iget-object v9, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v9}, Landroid/widget/TextView$CursorControllerMenu;->showCursorControllerMenu()V

    .line 7000
    .end local v1           #csr:Landroid/widget/TextView$CommitSelectionReceiver;
    .end local v3           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_e
    if-eqz v2, :cond_3

    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 7061
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 7063
    iget-object v1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    invoke-interface {v1, p0, v0, p1}, Landroid/text/method/MovementMethod;->onTrackballEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7064
    const/4 v0, 0x1

    .line 7068
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 6811
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 6812
    if-eqz p2, :cond_0

    .line 6813
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6815
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 6783
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 6785
    if-eqz p1, :cond_1

    .line 6786
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_0

    .line 6787
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->uncancel()V

    .line 6789
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6790
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 6791
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6806
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/TextView;->startStopMarquee(Z)V

    .line 6807
    return-void

    .line 6795
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_2

    .line 6796
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0}, Landroid/widget/TextView$Blink;->cancel()V

    .line 6799
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->onEndBatchEdit()V

    .line 6800
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-eqz v0, :cond_3

    .line 6801
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/widget/TextView$InputContentType;->enterDown:Z

    .line 6803
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 7897
    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-nez v0, :cond_1

    .line 7898
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7899
    iput-boolean v1, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    move v0, v1

    .line 7909
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 7902
    goto :goto_0

    .line 7905
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->startTextSelectionMode()V

    .line 7906
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->show()V

    .line 7907
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->showCursorControllerMenu()V

    .line 7908
    iput-boolean v1, p0, Landroid/widget/TextView;->mEatTouchRelease:Z

    move v0, v2

    .line 7909
    goto :goto_0
.end method

.method public removeTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 2
    .parameter "watcher"

    .prologue
    .line 6356
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 6357
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 6359
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 6360
    iget-object v1, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6363
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method reportExtractedText()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 4790
    iget-object v8, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 4791
    .local v8, ims:Landroid/widget/TextView$InputMethodState;
    if-eqz v8, :cond_2

    .line 4792
    iget-boolean v6, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 4793
    .local v6, contentChanged:Z
    if-nez v6, :cond_0

    iget-boolean v0, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    if-eqz v0, :cond_2

    .line 4794
    :cond_0
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    .line 4795
    iput-boolean v9, v8, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 4796
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 4797
    .local v1, req:Landroid/view/inputmethod/ExtractedTextRequest;
    if-eqz v1, :cond_2

    .line 4798
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 4799
    .local v7, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_2

    .line 4803
    iget v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-gez v0, :cond_1

    if-nez v6, :cond_1

    .line 4804
    const/4 v0, -0x2

    iput v0, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 4806
    :cond_1
    iget v2, v8, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    iget v3, v8, Landroid/widget/TextView$InputMethodState;->mChangedEnd:I

    iget v4, v8, Landroid/widget/TextView$InputMethodState;->mChangedDelta:I

    iget-object v5, v8, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView;->extractTextInternal(Landroid/view/inputmethod/ExtractedTextRequest;IIILandroid/view/inputmethod/ExtractedText;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4812
    iget v0, v1, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    iget-object v2, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iget-object v2, v2, Landroid/widget/TextView$InputMethodState;->mTmpExtracted:Landroid/view/inputmethod/ExtractedText;

    invoke-virtual {v7, p0, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    .line 4814
    const/4 v0, 0x1

    .line 4820
    .end local v1           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    .end local v6           #contentChanged:Z
    .end local v7           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_0
    return v0

    :cond_2
    move v0, v9

    goto :goto_0
.end method

.method sendAccessibilityEventTypeViewTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "beforeText"
    .parameter "fromIndex"
    .parameter "removedCount"
    .parameter "addedCount"

    .prologue
    .line 7532
    const/16 v1, 0x10

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 7534
    .local v0, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 7535
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setRemovedCount(I)V

    .line 7536
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setAddedCount(I)V

    .line 7537
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 7538
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 7539
    return-void
.end method

.method sendAfterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 6396
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 6397
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6398
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6399
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6400
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    .line 6399
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6403
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    return-void
.end method

.method sendOnTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 6382
    iget-object v3, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 6383
    iget-object v2, p0, Landroid/widget/TextView;->mListeners:Ljava/util/ArrayList;

    .line 6384
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 6385
    .local v0, count:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 6386
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/TextWatcher;

    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 6385
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6389
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/text/TextWatcher;>;"
    :cond_0
    return-void
.end method

.method public final setAutoLinkMask(I)V
    .locals 0
    .parameter "mask"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1905
    iput p1, p0, Landroid/widget/TextView;->mAutoLinkMask:I

    .line 1906
    return-void
.end method

.method public setByPassInputType(Z)V
    .locals 0
    .parameter "byPass"

    .prologue
    .line 9819
    iput-boolean p1, p0, Landroid/widget/TextView;->mByPassInputType:Z

    .line 9820
    return-void
.end method

.method public setCompoundDrawablePadding(I)V
    .locals 1
    .parameter "pad"

    .prologue
    .line 1598
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1599
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_1

    .line 1600
    if-eqz v0, :cond_0

    .line 1601
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    .line 1610
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1611
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1612
    return-void

    .line 1604
    :cond_1
    if-nez v0, :cond_2

    .line 1605
    new-instance v0, Landroid/widget/TextView$Drawables;

    .end local v0           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v0, p0}, Landroid/widget/TextView$Drawables;-><init>(Landroid/widget/TextView;)V

    .restart local v0       #dr:Landroid/widget/TextView$Drawables;
    iput-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1607
    :cond_2
    iput p1, v0, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    goto :goto_0
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1422
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1424
    .local v1, dr:Landroid/widget/TextView$Drawables;
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    if-eqz p4, :cond_2

    :cond_0
    const/4 v4, 0x1

    move v2, v4

    .line 1427
    .local v2, drawables:Z
    :goto_0
    if-nez v2, :cond_8

    .line 1429
    if-eqz v1, :cond_1

    .line 1430
    iget v4, v1, Landroid/widget/TextView$Drawables;->mDrawablePadding:I

    if-nez v4, :cond_3

    .line 1431
    iput-object v5, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1520
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1521
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1522
    return-void

    .end local v2           #drawables:Z
    :cond_2
    move v2, v6

    .line 1424
    goto :goto_0

    .line 1435
    .restart local v2       #drawables:Z
    :cond_3
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1436
    :cond_4
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1437
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1438
    :cond_5
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1439
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1440
    :cond_6
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1441
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_7

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1442
    :cond_7
    iput-object v5, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1443
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1444
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1445
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1446
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto :goto_1

    .line 1450
    :cond_8
    if-nez v1, :cond_9

    .line 1451
    new-instance v1, Landroid/widget/TextView$Drawables;

    .end local v1           #dr:Landroid/widget/TextView$Drawables;
    invoke-direct {v1, p0}, Landroid/widget/TextView$Drawables;-><init>(Landroid/widget/TextView;)V

    .restart local v1       #dr:Landroid/widget/TextView$Drawables;
    iput-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 1454
    :cond_9
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq v4, p1, :cond_a

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a

    .line 1455
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1457
    :cond_a
    iput-object p1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    .line 1459
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq v4, p2, :cond_b

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_b

    .line 1460
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1462
    :cond_b
    iput-object p2, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    .line 1464
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq v4, p3, :cond_c

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_c

    .line 1465
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1467
    :cond_c
    iput-object p3, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    .line 1469
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eq v4, p4, :cond_d

    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_d

    .line 1470
    iget-object v4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1472
    :cond_d
    iput-object p4, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 1474
    iget-object v0, v1, Landroid/widget/TextView$Drawables;->mCompoundRect:Landroid/graphics/Rect;

    .line 1477
    .local v0, compoundRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    .line 1479
    .local v3, state:[I
    if-eqz p1, :cond_e

    .line 1480
    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1481
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1482
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1483
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    .line 1484
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    .line 1489
    :goto_2
    if-eqz p3, :cond_f

    .line 1490
    invoke-virtual {p3, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1491
    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1492
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1493
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    .line 1494
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    .line 1499
    :goto_3
    if-eqz p2, :cond_10

    .line 1500
    invoke-virtual {p2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1501
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1502
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1503
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    .line 1504
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    .line 1509
    :goto_4
    if-eqz p4, :cond_11

    .line 1510
    invoke-virtual {p4, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1511
    invoke-virtual {p4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 1512
    invoke-virtual {p4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1513
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    .line 1514
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    goto/16 :goto_1

    .line 1486
    :cond_e
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightLeft:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeLeft:I

    goto :goto_2

    .line 1496
    :cond_f
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableHeightRight:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeRight:I

    goto :goto_3

    .line 1506
    :cond_10
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthTop:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeTop:I

    goto :goto_4

    .line 1516
    :cond_11
    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableWidthBottom:I

    iput v6, v1, Landroid/widget/TextView$Drawables;->mDrawableSizeBottom:I

    goto/16 :goto_1
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(IIII)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v4, 0x0

    .line 1541
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1542
    .local v0, resources:Landroid/content/res/Resources;
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_0
    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :goto_1
    if-eqz p3, :cond_3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :goto_2
    if-eqz p4, :cond_0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_0
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1546
    return-void

    :cond_1
    move-object v1, v4

    .line 1542
    goto :goto_0

    :cond_2
    move-object v2, v4

    goto :goto_1

    :cond_3
    move-object v3, v4

    goto :goto_2
.end method

.method public setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 1562
    if-eqz p1, :cond_0

    .line 1563
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1565
    :cond_0
    if-eqz p3, :cond_1

    .line 1566
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p3, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1568
    :cond_1
    if-eqz p2, :cond_2

    .line 1569
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1571
    :cond_2
    if-eqz p4, :cond_3

    .line 1572
    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p4, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1574
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1575
    return-void
.end method

.method public setCursorVisible(Z)V
    .locals 2
    .parameter "visible"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 6108
    iput-boolean p1, p0, Landroid/widget/TextView;->mCursorVisible:Z

    .line 6109
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6111
    if-eqz p1, :cond_2

    .line 6112
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6118
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    .line 6119
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 6120
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 6125
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 6126
    return-void

    .line 6113
    :cond_2
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    if-eqz v0, :cond_0

    .line 6114
    iget-object v0, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    iget-object v1, p0, Landroid/widget/TextView;->mBlink:Landroid/widget/TextView$Blink;

    invoke-virtual {v0, v1}, Landroid/widget/TextView$Blink;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected setEditTextMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 9054
    sparse-switch p1, :sswitch_data_0

    .line 9066
    :goto_0
    return-void

    .line 9056
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/TextView;->stopTextSelectionMode()V

    goto :goto_0

    .line 9060
    :sswitch_1
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    goto :goto_0

    .line 9054
    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0x16 -> :sswitch_1
    .end sparse-switch
.end method

.method public final setEditableFactory(Landroid/text/Editable$Factory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 2594
    iput-object p1, p0, Landroid/widget/TextView;->mEditableFactory:Landroid/text/Editable$Factory;

    .line 2595
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2596
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1
    .parameter "where"

    .prologue
    .line 6058
    iput-object p1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 6060
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 6061
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 6062
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 6063
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6065
    :cond_0
    return-void
.end method

.method public setEms(I)V
    .locals 1
    .parameter "ems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2258
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2259
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2261
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2262
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2263
    return-void
.end method

.method public setError(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "error"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 3358
    if-nez p1, :cond_0

    .line 3359
    invoke-virtual {p0, v1, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    .line 3368
    :goto_0
    return-void

    .line 3361
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10801fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3365
    .local v0, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3366
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setError(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "error"
    .parameter "icon"

    .prologue
    const/4 v4, 0x0

    .line 3380
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 3382
    iput-object p1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    .line 3383
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mErrorWasChanged:Z

    .line 3384
    iget-object v0, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    .line 3385
    .local v0, dr:Landroid/widget/TextView$Drawables;
    if-eqz v0, :cond_2

    .line 3386
    iget-object v1, v0, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    iget-object v3, v0, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1, v2, p2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3392
    :goto_0
    if-nez p1, :cond_3

    .line 3393
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v1, :cond_1

    .line 3394
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3395
    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->dismiss()V

    .line 3398
    :cond_0
    iput-object v4, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    .line 3405
    :cond_1
    :goto_1
    return-void

    .line 3389
    :cond_2
    invoke-virtual {p0, v4, v4, p2, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3401
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3402
    invoke-direct {p0}, Landroid/widget/TextView;->showError()V

    goto :goto_1
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 8
    .parameter "text"

    .prologue
    const/4 v7, 0x0

    .line 4842
    invoke-virtual {p0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v1

    .line 4843
    .local v1, content:Landroid/text/Editable;
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 4844
    if-nez v1, :cond_3

    .line 4845
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    sget-object v6, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 4864
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Spannable;

    .line 4865
    .local v3, sp:Landroid/text/Spannable;
    invoke-interface {v3}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 4866
    .local v0, N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 4867
    .local v4, start:I
    if-gez v4, :cond_7

    const/4 v4, 0x0

    .line 4869
    :cond_1
    :goto_1
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 4870
    .local v2, end:I
    if-gez v2, :cond_8

    const/4 v2, 0x0

    .line 4872
    :cond_2
    :goto_2
    invoke-static {v3, v4, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4875
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_9

    .line 4876
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->startSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    .line 4880
    :goto_3
    return-void

    .line 4846
    .end local v0           #N:I
    .end local v2           #end:I
    .end local v3           #sp:Landroid/text/Spannable;
    .end local v4           #start:I
    :cond_3
    iget v5, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    if-gez v5, :cond_4

    .line 4847
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-static {v1, v7, v5}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 4848
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v5

    iget-object v6, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v7, v5, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 4850
    :cond_4
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 4851
    .restart local v0       #N:I
    iget v4, p1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 4852
    .restart local v4       #start:I
    if-le v4, v0, :cond_5

    move v4, v0

    .line 4853
    :cond_5
    iget v2, p1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    .line 4854
    .restart local v2       #end:I
    if-le v2, v0, :cond_6

    move v2, v0

    .line 4855
    :cond_6
    invoke-static {v1, v4, v2}, Landroid/widget/TextView;->removeParcelableSpans(Landroid/text/Spannable;II)V

    .line 4856
    iget-object v5, p1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    invoke-interface {v1, v4, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 4868
    .end local v2           #end:I
    .restart local v3       #sp:Landroid/text/Spannable;
    :cond_7
    if-le v4, v0, :cond_1

    move v4, v0

    goto :goto_1

    .line 4871
    .restart local v2       #end:I
    :cond_8
    if-le v2, v0, :cond_2

    move v2, v0

    goto :goto_2

    .line 4878
    :cond_9
    invoke-static {p0, v3}, Landroid/text/method/MetaKeyKeyListener;->stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V

    goto :goto_3
.end method

.method public setExtracting(Landroid/view/inputmethod/ExtractedTextRequest;)V
    .locals 1
    .parameter "req"

    .prologue
    .line 4886
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    if-eqz v0, :cond_0

    .line 4887
    iget-object v0, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    iput-object p1, v0, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    .line 4889
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 4890
    return-void
.end method

.method public setFilters([Landroid/text/InputFilter;)V
    .locals 1
    .parameter "filters"

    .prologue
    .line 3575
    if-nez p1, :cond_0

    .line 3576
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3579
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mFilters:[Landroid/text/InputFilter;

    .line 3581
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Editable;

    if-eqz v0, :cond_1

    .line 3582
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Editable;

    invoke-direct {p0, v0, p1}, Landroid/widget/TextView;->setFilters(Landroid/text/Editable;[Landroid/text/InputFilter;)V

    .line 3584
    :cond_1
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 8
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3547
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v6

    .line 3549
    .local v6, result:Z
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    if-eqz v0, :cond_0

    .line 3550
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v0}, Landroid/widget/TextView$ErrorPopup;->getContentView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 3551
    .local v7, tv:Landroid/widget/TextView;
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    iget-object v1, p0, Landroid/widget/TextView;->mError:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v1, v7}, Landroid/widget/TextView;->chooseSize(Landroid/widget/PopupWindow;Ljava/lang/CharSequence;Landroid/widget/TextView;)V

    .line 3552
    iget-object v0, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorX()I

    move-result v2

    invoke-direct {p0}, Landroid/widget/TextView;->getErrorY()I

    move-result v3

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getWidth()I

    move-result v4

    iget-object v1, p0, Landroid/widget/TextView;->mPopup:Landroid/widget/TextView$ErrorPopup;

    invoke-virtual {v1}, Landroid/widget/TextView$ErrorPopup;->getHeight()I

    move-result v5

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/widget/TextView$ErrorPopup;->update(Landroid/view/View;IIII)V

    .line 3556
    .end local v7           #tv:Landroid/widget/TextView;
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->restartMarqueeIfNeeded()V

    .line 3558
    return v6
.end method

.method public setFreezesText(Z)V
    .locals 0
    .parameter "freezesText"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2573
    iput-boolean p1, p0, Landroid/widget/TextView;->mFreezesText:Z

    .line 2574
    return-void
.end method

.method public setGravity(I)V
    .locals 8
    .parameter "gravity"

    .prologue
    .line 2026
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 2027
    or-int/lit8 p1, p1, 0x3

    .line 2029
    :cond_0
    and-int/lit8 v0, p1, 0x70

    if-nez v0, :cond_1

    .line 2030
    or-int/lit8 p1, p1, 0x30

    .line 2033
    :cond_1
    const/4 v7, 0x0

    .line 2035
    .local v7, newLayout:Z
    and-int/lit8 v0, p1, 0x7

    iget v3, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v3, v3, 0x7

    if-eq v0, v3, :cond_2

    .line 2037
    const/4 v7, 0x1

    .line 2040
    :cond_2
    iget v0, p0, Landroid/widget/TextView;->mGravity:I

    if-eq p1, v0, :cond_3

    .line 2041
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2044
    :cond_3
    iput p1, p0, Landroid/widget/TextView;->mGravity:I

    .line 2046
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_4

    if-eqz v7, :cond_4

    .line 2048
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    .line 2049
    .local v1, want:I
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    move v2, v0

    .line 2051
    .local v2, hintWant:I
    :goto_0
    sget-object v3, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    sget-object v4, Landroid/widget/TextView;->UNKNOWN_BORING:Landroid/text/BoringLayout$Metrics;

    iget v0, p0, Landroid/view/View;->mRight:I

    iget v5, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v5

    sub-int v5, v0, v5

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/widget/TextView;->makeNewLayout(IILandroid/text/BoringLayout$Metrics;Landroid/text/BoringLayout$Metrics;IZ)V

    .line 2055
    .end local v1           #want:I
    .end local v2           #hintWant:I
    :cond_4
    return-void

    .line 2049
    .restart local v1       #want:I
    :cond_5
    iget-object v0, p0, Landroid/widget/TextView;->mHintLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    move v2, v0

    goto :goto_0
.end method

.method public setHeight(I)V
    .locals 1
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2188
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2189
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2191
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2192
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2193
    return-void
.end method

.method public setHighlightColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1863
    iget v0, p0, Landroid/widget/TextView;->mHighlightColor:I

    if-eq v0, p1, :cond_0

    .line 1864
    iput p1, p0, Landroid/widget/TextView;->mHighlightColor:I

    .line 1865
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1867
    :cond_0
    return-void
.end method

.method public final setHint(I)V
    .locals 1
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2951
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 2952
    return-void
.end method

.method public final setHint(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "hint"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2932
    invoke-static {p1}, Landroid/text/TextUtils;->stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHint:Ljava/lang/CharSequence;

    .line 2934
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2935
    invoke-direct {p0}, Landroid/widget/TextView;->checkForRelayout()V

    .line 2938
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 2939
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2941
    :cond_1
    return-void
.end method

.method public final setHintTextColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1955
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 1956
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1957
    return-void
.end method

.method public final setHintTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 1965
    iput-object p1, p0, Landroid/widget/TextView;->mHintTextColor:Landroid/content/res/ColorStateList;

    .line 1966
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1967
    return-void
.end method

.method public setHorizontallyScrolling(Z)V
    .locals 1
    .parameter "whether"

    .prologue
    .line 2100
    iput-boolean p1, p0, Landroid/widget/TextView;->mHorizontallyScrolling:Z

    .line 2102
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2103
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2104
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2105
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2107
    :cond_0
    return-void
.end method

.method public setIMEChangable(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 263
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsIMEChangable:Z

    .line 264
    return-void
.end method

.method public setImeActionLabel(Ljava/lang/CharSequence;I)V
    .locals 1
    .parameter "label"
    .parameter "actionId"

    .prologue
    .line 3160
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    .line 3161
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3163
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->imeActionLabel:Ljava/lang/CharSequence;

    .line 3164
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p2, v0, Landroid/widget/TextView$InputContentType;->imeActionId:I

    .line 3165
    return-void
.end method

.method public setImeOptions(I)V
    .locals 1
    .parameter "imeOptions"

    .prologue
    .line 3132
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    .line 3133
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3135
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput p1, v0, Landroid/widget/TextView$InputContentType;->imeOptions:I

    .line 3136
    return-void
.end method

.method public setIncludeFontPadding(Z)V
    .locals 1
    .parameter "includepad"

    .prologue
    .line 5278
    iput-boolean p1, p0, Landroid/widget/TextView;->mIncludePad:Z

    .line 5280
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 5281
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 5282
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 5283
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 5285
    :cond_0
    return-void
.end method

.method public setInputExtras(I)V
    .locals 3
    .parameter "xmlResId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3311
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 3312
    .local v0, parser:Landroid/content/res/XmlResourceParser;
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/TextView$InputContentType;

    invoke-direct {v1, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3313
    :cond_0
    iget-object v1, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v1, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    .line 3314
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iget-object v2, v2, Landroid/widget/TextView$InputContentType;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V

    .line 3315
    return-void
.end method

.method public setInputType(I)V
    .locals 11
    .parameter "type"

    .prologue
    const/4 v8, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2979
    iget v7, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v7}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v5

    .line 2980
    .local v5, wasPassword:Z
    iget v7, p0, Landroid/widget/TextView;->mInputType:I

    invoke-direct {p0, v7}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v6

    .line 2981
    .local v6, wasVisiblePassword:Z
    invoke-direct {p0, p1, v9}, Landroid/widget/TextView;->setInputType(IZ)V

    .line 2982
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    move-result v2

    .line 2983
    .local v2, isPassword:Z
    invoke-direct {p0, p1}, Landroid/widget/TextView;->isVisiblePasswordInputType(I)Z

    move-result v3

    .line 2984
    .local v3, isVisiblePassword:Z
    const/4 v0, 0x0

    .line 2985
    .local v0, forceUpdate:Z
    if-eqz v2, :cond_4

    .line 2986
    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 2987
    invoke-direct {p0, v10, v9}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 3002
    :cond_0
    :goto_0
    invoke-direct {p0}, Landroid/widget/TextView;->hideControllers()V

    .line 3003
    invoke-virtual {p0}, Landroid/widget/TextView;->hideCursorControllerMenu()V

    .line 3006
    const v7, 0x2000f

    and-int/2addr v7, p1

    const v8, 0x20001

    if-ne v7, v8, :cond_8

    move v4, v10

    .line 3013
    .local v4, multiLine:Z
    :goto_1
    iget-boolean v7, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eq v7, v4, :cond_1

    if-eqz v0, :cond_2

    .line 3016
    :cond_1
    if-nez v4, :cond_9

    move v7, v10

    :goto_2
    if-nez v2, :cond_a

    move v8, v10

    :goto_3
    invoke-direct {p0, v7, v8}, Landroid/widget/TextView;->applySingleLine(ZZ)V

    .line 3019
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 3020
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_3

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3021
    :cond_3
    return-void

    .line 2988
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v4           #multiLine:Z
    :cond_4
    if-eqz v3, :cond_6

    .line 2989
    iget-object v7, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    if-ne v7, v8, :cond_5

    .line 2990
    const/4 v0, 0x1

    .line 2992
    :cond_5
    invoke-direct {p0, v10, v9}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    goto :goto_0

    .line 2993
    :cond_6
    if-nez v5, :cond_7

    if-eqz v6, :cond_0

    .line 2995
    :cond_7
    invoke-direct {p0, v8, v8}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 2996
    iget-object v7, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v8

    if-ne v7, v8, :cond_0

    .line 2997
    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    move v4, v9

    .line 3006
    goto :goto_1

    .restart local v4       #multiLine:Z
    :cond_9
    move v7, v9

    .line 3016
    goto :goto_2

    :cond_a
    move v8, v9

    goto :goto_3
.end method

.method public setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 4
    .parameter "input"

    .prologue
    const/4 v3, 0x1

    .line 1147
    invoke-direct {p0, p1}, Landroid/widget/TextView;->setKeyListenerOnly(Landroid/text/method/KeyListener;)V

    .line 1148
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1150
    if-eqz p1, :cond_3

    .line 1152
    :try_start_0
    iget-object v2, p0, Landroid/widget/TextView;->mInput:Landroid/text/method/KeyListener;

    invoke-interface {v2}, Landroid/text/method/KeyListener;->getInputType()I

    move-result v2

    iput v2, p0, Landroid/widget/TextView;->mInputType:I
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    :goto_0
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v3, :cond_0

    .line 1158
    iget-boolean v2, p0, Landroid/widget/TextView;->mSingleLine:Z

    if-eqz v2, :cond_2

    .line 1159
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    .line 1168
    :cond_0
    :goto_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 1169
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1170
    :cond_1
    return-void

    .line 1153
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1154
    .local v0, e:Ljava/lang/IncompatibleClassChangeError;
    iput v3, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_0

    .line 1161
    .end local v0           #e:Ljava/lang/IncompatibleClassChangeError;
    :cond_2
    iget v2, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v3, 0x2

    or-int/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_1

    .line 1165
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_1
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .parameter "add"
    .parameter "mult"

    .prologue
    .line 2290
    iput p2, p0, Landroid/widget/TextView;->mSpacingMult:F

    .line 2291
    iput p1, p0, Landroid/widget/TextView;->mSpacingAdd:F

    .line 2293
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2294
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2295
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2296
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2298
    :cond_0
    return-void
.end method

.method public setLines(I)V
    .locals 1
    .parameter "lines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2172
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2173
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2175
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2176
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2177
    return-void
.end method

.method public final setLinkTextColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1994
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 1995
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1996
    return-void
.end method

.method public final setLinkTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0
    .parameter "colors"

    .prologue
    .line 2004
    iput-object p1, p0, Landroid/widget/TextView;->mLinkTextColor:Landroid/content/res/ColorStateList;

    .line 2005
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 2006
    return-void
.end method

.method public final setLinksClickable(Z)V
    .locals 0
    .parameter "whether"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1918
    iput-boolean p1, p0, Landroid/widget/TextView;->mLinksClickable:Z

    .line 1919
    return-void
.end method

.method public setMarqueeRepeatLimit(I)V
    .locals 0
    .parameter "marqueeLimit"

    .prologue
    .line 6074
    iput p1, p0, Landroid/widget/TextView;->mMarqueeRepeatLimit:I

    .line 6075
    return-void
.end method

.method public setMaxEms(I)V
    .locals 1
    .parameter "maxems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2230
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2231
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2233
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2234
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2235
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .parameter "maxHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2158
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2159
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2161
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2162
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2163
    return-void
.end method

.method public setMaxLines(I)V
    .locals 1
    .parameter "maxlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2144
    iput p1, p0, Landroid/widget/TextView;->mMaximum:I

    .line 2145
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMaxMode:I

    .line 2147
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2148
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2149
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .parameter "maxpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2244
    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2245
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2247
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2248
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2249
    return-void
.end method

.method public setMinEms(I)V
    .locals 1
    .parameter "minems"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2202
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2203
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2205
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2206
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2207
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .parameter "minHeight"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2130
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2131
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2133
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2134
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2135
    return-void
.end method

.method public setMinLines(I)V
    .locals 1
    .parameter "minlines"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2116
    iput p1, p0, Landroid/widget/TextView;->mMinimum:I

    .line 2117
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/TextView;->mMinMode:I

    .line 2119
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2120
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2121
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .parameter "minpixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2216
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    .line 2217
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    .line 2219
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2220
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2221
    return-void
.end method

.method public final setMovementMethod(Landroid/text/method/MovementMethod;)V
    .locals 1
    .parameter "movement"

    .prologue
    .line 1200
    iput-object p1, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    .line 1202
    iget-object v0, p0, Landroid/widget/TextView;->mMovement:Landroid/text/method/MovementMethod;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 1203
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1205
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->fixFocusableAndClickableSettings()V

    .line 1208
    invoke-direct {p0}, Landroid/widget/TextView;->prepareCursorControllers()V

    .line 1209
    return-void
.end method

.method public setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 3198
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    .line 3199
    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3201
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->onEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 3202
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1624
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingRight:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingTop:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Landroid/view/View;->mPaddingBottom:I

    if-eq p4, v0, :cond_1

    .line 1628
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1632
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1633
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1634
    return-void
.end method

.method public setPaintFlags(I)V
    .locals 1
    .parameter "flags"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2082
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2083
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFlags(I)V

    .line 2085
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 2086
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 2087
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2088
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2091
    :cond_0
    return-void
.end method

.method public setPrivateImeOptions(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 3283
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextView$InputContentType;

    invoke-direct {v0, p0}, Landroid/widget/TextView$InputContentType;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    .line 3284
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mInputContentType:Landroid/widget/TextView$InputContentType;

    iput-object p1, v0, Landroid/widget/TextView$InputContentType;->privateImeOptions:Ljava/lang/String;

    .line 3285
    return-void
.end method

.method public setRawInputType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 3066
    iput p1, p0, Landroid/widget/TextView;->mInputType:I

    .line 3067
    return-void
.end method

.method public setScroller(Landroid/widget/Scroller;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 7072
    iput-object p1, p0, Landroid/widget/TextView;->mScroller:Landroid/widget/Scroller;

    .line 7073
    return-void
.end method

.method public setSelectAllOnFocus(Z)V
    .locals 2
    .parameter "selectAllOnFocus"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 6094
    iput-boolean p1, p0, Landroid/widget/TextView;->mSelectAllOnFocus:Z

    .line 6096
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-nez v0, :cond_0

    .line 6097
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    sget-object v1, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 6099
    :cond_0
    return-void
.end method

.method public setSelected(I)V
    .locals 1
    .parameter "value"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 6831
    if-ne v0, p1, :cond_0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6832
    return-void

    .line 6831
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelected(Z)V
    .locals 3
    .parameter "selected"

    .prologue
    .line 6837
    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    .line 6839
    .local v0, wasSelected:Z
    invoke-super {p0, p1}, Landroid/view/View;->setSelected(Z)V

    .line 6841
    if-eq p1, v0, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    .line 6842
    if-eqz p1, :cond_1

    .line 6843
    invoke-direct {p0}, Landroid/widget/TextView;->startMarquee()V

    .line 6848
    :cond_0
    :goto_0
    return-void

    .line 6845
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->stopMarquee()V

    goto :goto_0
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 1879
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 1881
    iput p1, p0, Landroid/widget/TextView;->mShadowRadius:F

    .line 1882
    iput p2, p0, Landroid/widget/TextView;->mShadowDx:F

    .line 1883
    iput p3, p0, Landroid/widget/TextView;->mShadowDy:F

    .line 1885
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1886
    return-void
.end method

.method public setSingleLine()V
    .locals 1

    .prologue
    .line 6004
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 6005
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 3
    .parameter "singleLine"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 6019
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v2, :cond_0

    .line 6021
    if-eqz p1, :cond_1

    .line 6022
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const v1, -0x20001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    .line 6027
    :cond_0
    :goto_0
    invoke-direct {p0, p1, v2}, Landroid/widget/TextView;->applySingleLine(ZZ)V

    .line 6028
    return-void

    .line 6024
    :cond_1
    iget v0, p0, Landroid/widget/TextView;->mInputType:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/widget/TextView;->mInputType:I

    goto :goto_0
.end method

.method public final setSpannableFactory(Landroid/text/Spannable$Factory;)V
    .locals 1
    .parameter "factory"

    .prologue
    .line 2602
    iput-object p1, p0, Landroid/widget/TextView;->mSpannableFactory:Landroid/text/Spannable$Factory;

    .line 2603
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2604
    return-void
.end method

.method public final setText(I)V
    .locals 1
    .parameter "resid"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2916
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2917
    return-void
.end method

.method public final setText(ILandroid/widget/TextView$BufferType;)V
    .locals 1
    .parameter "resid"
    .parameter "type"

    .prologue
    .line 2920
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2921
    return-void
.end method

.method public final setText(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2619
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2620
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2
    .parameter "text"
    .parameter "type"

    .prologue
    .line 2644
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 2646
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-eqz v0, :cond_0

    .line 2647
    iget-object v0, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/TextView$CharWrapper;->access$102(Landroid/widget/TextView$CharWrapper;[C)[C

    .line 2649
    :cond_0
    return-void
.end method

.method public final setText([CII)V
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    const/4 v3, 0x0

    .line 2805
    const/4 v0, 0x0

    .line 2807
    .local v0, oldlen:I
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 2808
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2816
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 2817
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2818
    iget-object v1, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-direct {p0, v1, v3, v0, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    .line 2823
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    if-nez v1, :cond_3

    .line 2824
    new-instance v1, Landroid/widget/TextView$CharWrapper;

    invoke-direct {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;-><init>([CII)V

    iput-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    .line 2829
    :goto_1
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    iget-object v2, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-direct {p0, v1, v2, v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;ZI)V

    .line 2830
    return-void

    .line 2820
    :cond_2
    const-string v1, ""

    invoke-direct {p0, v1, v3, v3, p3}, Landroid/widget/TextView;->sendBeforeTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0

    .line 2826
    :cond_3
    iget-object v1, p0, Landroid/widget/TextView;->mCharWrapper:Landroid/widget/TextView$CharWrapper;

    invoke-virtual {v1, p1, p2, p3}, Landroid/widget/TextView$CharWrapper;->set([CII)V

    goto :goto_1
.end method

.method public setTextAppearance(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "resid"

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 1652
    sget-object v6, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1660
    .local v0, appearance:Landroid/content/res/TypedArray;
    const/4 v6, 0x4

    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1661
    .local v1, color:I
    if-eqz v1, :cond_0

    .line 1662
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 1665
    :cond_0
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1667
    .local v2, colors:Landroid/content/res/ColorStateList;
    if-eqz v2, :cond_1

    .line 1668
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 1671
    :cond_1
    invoke-virtual {v0, v7, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 1673
    .local v4, ts:I
    if-eqz v4, :cond_2

    .line 1674
    int-to-float v6, v4

    invoke-direct {p0, v6}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1677
    :cond_2
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1679
    if-eqz v2, :cond_3

    .line 1680
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 1683
    :cond_3
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 1685
    if-eqz v2, :cond_4

    .line 1686
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setLinkTextColor(Landroid/content/res/ColorStateList;)V

    .line 1691
    :cond_4
    const/4 v6, 0x1

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 1693
    .local v5, typefaceIndex:I
    const/4 v6, 0x2

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 1696
    .local v3, styleIndex:I
    invoke-direct {p0, v5, v3}, Landroid/widget/TextView;->setTypefaceByIndex(II)V

    .line 1697
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1698
    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .parameter "color"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1820
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 1821
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1822
    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1
    .parameter "colors"

    .prologue
    .line 1830
    if-nez p1, :cond_0

    .line 1831
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1834
    :cond_0
    iput-object p1, p0, Landroid/widget/TextView;->mTextColor:Landroid/content/res/ColorStateList;

    .line 1835
    invoke-direct {p0}, Landroid/widget/TextView;->updateTextColors()V

    .line 1836
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2632
    iget-object v0, p0, Landroid/widget/TextView;->mBufferType:Landroid/widget/TextView$BufferType;

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2633
    return-void
.end method

.method public final setTextKeepState(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 6
    .parameter "text"
    .parameter "type"

    .prologue
    const/4 v5, 0x0

    .line 2899
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 2900
    .local v2, start:I
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2901
    .local v0, end:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 2903
    .local v1, len:I
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 2905
    if-gez v2, :cond_0

    if-ltz v0, :cond_1

    .line 2906
    :cond_0
    iget-object v3, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_1

    .line 2907
    iget-object p0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    .end local p0
    check-cast p0, Landroid/text/Spannable;

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {p0, v3, v4}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2912
    :cond_1
    return-void
.end method

.method public setTextScaleX(F)V
    .locals 1
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1770
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1771
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mUserSetTextScaleX:Z

    .line 1772
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextScaleX(F)V

    .line 1774
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 1775
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1776
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1777
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1780
    :cond_0
    return-void
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 1718
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1719
    return-void
.end method

.method public setTextSize(IF)V
    .locals 3
    .parameter "unit"
    .parameter "size"

    .prologue
    .line 1731
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1734
    .local v0, c:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 1735
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1739
    .local v1, r:Landroid/content/res/Resources;
    :goto_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1, p2, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {p0, v2}, Landroid/widget/TextView;->setRawTextSize(F)V

    .line 1741
    return-void

    .line 1737
    .end local v1           #r:Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .restart local v1       #r:Landroid/content/res/Resources;
    goto :goto_0
.end method

.method public final setTransformationMethod(Landroid/text/method/TransformationMethod;)V
    .locals 2
    .parameter "method"

    .prologue
    .line 1241
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-ne p1, v0, :cond_0

    .line 1255
    :goto_0
    return-void

    .line 1246
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_1

    .line 1247
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spannable;

    if-eqz v0, :cond_1

    .line 1248
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    invoke-interface {v0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 1252
    :cond_1
    iput-object p1, p0, Landroid/widget/TextView;->mTransformation:Landroid/text/method/TransformationMethod;

    .line 1254
    iget-object v0, p0, Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .parameter "tf"

    .prologue
    .line 1793
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1794
    iget-object v0, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1796
    iget-object v0, p0, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 1797
    invoke-direct {p0}, Landroid/widget/TextView;->nullLayouts()V

    .line 1798
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 1799
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 1802
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1032
    if-lez p2, :cond_4

    .line 1033
    if-nez p1, :cond_0

    .line 1034
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 1039
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1041
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    move v1, v2

    .line 1042
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v2, v1, -0x1

    and-int v0, p2, v2

    .line 1043
    .local v0, need:I
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1044
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    const/high16 v3, -0x4180

    :goto_3
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1050
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_4
    return-void

    .line 1036
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 1041
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_2
    move v3, v4

    .line 1043
    goto :goto_2

    :cond_3
    move v3, v5

    .line 1044
    goto :goto_3

    .line 1046
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 1047
    iget-object v2, p0, Landroid/widget/TextView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 1048
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_4
.end method

.method public setWidth(I)V
    .locals 1
    .parameter "pixels"
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 2274
    iput p1, p0, Landroid/widget/TextView;->mMinWidth:I

    iput p1, p0, Landroid/widget/TextView;->mMaxWidth:I

    .line 2275
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/TextView;->mMinWidthMode:I

    iput v0, p0, Landroid/widget/TextView;->mMaxWidthMode:I

    .line 2277
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 2278
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 2279
    return-void
.end method

.method public showCursorController(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 9073
    iput-boolean p1, p0, Landroid/widget/TextView;->mIsCursorControllerOn:Z

    .line 9074
    return-void
.end method

.method spanChange(Landroid/text/Spanned;Ljava/lang/Object;IIII)V
    .locals 8
    .parameter "buf"
    .parameter "what"
    .parameter "oldStart"
    .parameter "newStart"
    .parameter "oldEnd"
    .parameter "newEnd"

    .prologue
    const/4 v7, 0x1

    .line 6446
    const/4 v4, 0x0

    .line 6447
    .local v4, selChanged:Z
    const/4 v3, -0x1

    .local v3, newSelStart:I
    const/4 v2, -0x1

    .line 6449
    .local v2, newSelEnd:I
    iget-object v1, p0, Landroid/widget/TextView;->mInputMethodState:Landroid/widget/TextView$InputMethodState;

    .line 6451
    .local v1, ims:Landroid/widget/TextView$InputMethodState;
    sget-object v5, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne p2, v5, :cond_2

    .line 6452
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6453
    const/4 v4, 0x1

    .line 6454
    move v2, p4

    .line 6456
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_0

    .line 6457
    iput-boolean v7, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6460
    :cond_0
    if-gez p3, :cond_1

    if-ltz p4, :cond_2

    .line 6461
    :cond_1
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    invoke-direct {p0, v5, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 6462
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 6464
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6465
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 6466
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 6471
    :cond_2
    sget-object v5, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-ne p2, v5, :cond_5

    .line 6472
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6473
    const/4 v4, 0x1

    .line 6474
    move v3, p4

    .line 6476
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v5

    if-nez v5, :cond_3

    .line 6477
    iput-boolean v7, p0, Landroid/widget/TextView;->mSelectionMoved:Z

    .line 6480
    :cond_3
    if-gez p3, :cond_4

    if-ltz p4, :cond_5

    .line 6481
    :cond_4
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v0

    .line 6482
    .local v0, end:I
    invoke-direct {p0, v0, p3, p4}, Landroid/widget/TextView;->invalidateCursor(III)V

    .line 6486
    .end local v0           #end:I
    :cond_5
    if-eqz v4, :cond_8

    .line 6487
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    and-int/lit16 v5, v5, 0x200

    if-nez v5, :cond_8

    .line 6488
    if-gez v3, :cond_6

    .line 6489
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 6491
    :cond_6
    if-gez v2, :cond_7

    .line 6492
    invoke-static {p1}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 6494
    :cond_7
    invoke-virtual {p0, v3, v2}, Landroid/widget/TextView;->onSelectionChanged(II)V

    .line 6498
    :cond_8
    instance-of v5, p2, Landroid/text/style/UpdateAppearance;

    if-nez v5, :cond_9

    instance-of v5, p2, Landroid/text/style/ParagraphStyle;

    if-eqz v5, :cond_b

    .line 6500
    :cond_9
    if-eqz v1, :cond_a

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_13

    .line 6501
    :cond_a
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 6502
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6503
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 6509
    :cond_b
    :goto_0
    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 6510
    iput-boolean v7, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 6511
    if-eqz v1, :cond_c

    invoke-static {p1, p2}, Landroid/text/method/MetaKeyKeyListener;->isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 6512
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mSelectionModeChanged:Z

    .line 6515
    :cond_c
    invoke-static {p1}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_e

    .line 6516
    if-eqz v1, :cond_d

    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-nez v5, :cond_14

    .line 6517
    :cond_d
    invoke-direct {p0}, Landroid/widget/TextView;->invalidateCursor()V

    .line 6524
    :cond_e
    :goto_1
    instance-of v5, p2, Landroid/text/ParcelableSpan;

    if-eqz v5, :cond_12

    .line 6527
    if-eqz v1, :cond_12

    iget-object v5, v1, Landroid/widget/TextView$InputMethodState;->mExtracting:Landroid/view/inputmethod/ExtractedTextRequest;

    if-eqz v5, :cond_12

    .line 6528
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mBatchEditNesting:I

    if-eqz v5, :cond_15

    .line 6529
    if-ltz p3, :cond_10

    .line 6530
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p3, :cond_f

    .line 6531
    iput p3, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6533
    :cond_f
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p5, :cond_10

    .line 6534
    iput p5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6537
    :cond_10
    if-ltz p4, :cond_12

    .line 6538
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p4, :cond_11

    .line 6539
    iput p4, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6541
    :cond_11
    iget v5, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    if-le v5, p6, :cond_12

    .line 6542
    iput p6, v1, Landroid/widget/TextView$InputMethodState;->mChangedStart:I

    .line 6553
    :cond_12
    :goto_2
    return-void

    .line 6505
    :cond_13
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_0

    .line 6519
    :cond_14
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mCursorChanged:Z

    goto :goto_1

    .line 6549
    :cond_15
    iput-boolean v7, v1, Landroid/widget/TextView$InputMethodState;->mContentChanged:Z

    goto :goto_2
.end method

.method public startTextSelectionMode1()V
    .locals 2

    .prologue
    .line 7945
    iget-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    if-nez v0, :cond_3

    .line 7946
    invoke-virtual {p0}, Landroid/widget/TextView;->hasSelectionController()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7947
    const-string v0, "TextView"

    const-string v1, "TextView has no selection controller. Action mode cancelled."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7961
    :cond_0
    :goto_0
    return-void

    .line 7952
    :cond_1
    invoke-direct {p0}, Landroid/widget/TextView;->canSelectText()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/TextView;->mEnableSelection:Z

    if-eqz v0, :cond_0

    .line 7956
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->selectCurrentWord()V

    .line 7958
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextView;->mIsInTextSelectionMode:Z

    .line 7960
    :cond_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionController()Landroid/widget/TextView$CursorController;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->show()V

    goto :goto_0
.end method

.method updateAfterEdit()V
    .locals 3

    .prologue
    .line 4960
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 4961
    invoke-virtual {p0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 4963
    .local v0, curs:I
    if-gez v0, :cond_0

    iget v1, p0, Landroid/widget/TextView;->mGravity:I

    and-int/lit8 v1, v1, 0x70

    const/16 v2, 0x50

    if-ne v1, v2, :cond_1

    .line 4965
    :cond_0
    invoke-direct {p0}, Landroid/widget/TextView;->registerForPreDraw()V

    .line 4968
    :cond_1
    if-ltz v0, :cond_2

    .line 4969
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView;->mHighlightPathBogus:Z

    .line 4971
    invoke-virtual {p0}, Landroid/widget/TextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4972
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/widget/TextView;->mShowCursor:J

    .line 4973
    invoke-direct {p0}, Landroid/widget/TextView;->makeBlink()V

    .line 4977
    :cond_2
    invoke-direct {p0}, Landroid/widget/TextView;->checkForResize()V

    .line 4978
    return-void
.end method

.method protected updateCursorControllerPositions()V
    .locals 1

    .prologue
    .line 4253
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4255
    iget-object v0, p0, Landroid/widget/TextView;->mInsertionPointCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->updatePosition()V

    .line 4257
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4259
    iget-object v0, p0, Landroid/widget/TextView;->mSelectionModifierCursorController:Landroid/widget/TextView$CursorController;

    invoke-interface {v0}, Landroid/widget/TextView$CursorController;->updatePosition()V

    .line 4262
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4263
    iget-object v0, p0, Landroid/widget/TextView;->mCursorControllerMenu:Landroid/widget/TextView$CursorControllerMenu;

    invoke-virtual {v0}, Landroid/widget/TextView$CursorControllerMenu;->updateCursorControllerMenu()V

    .line 4266
    :cond_2
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 2
    .parameter "who"

    .prologue
    .line 3923
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    .line 3924
    .local v0, verified:Z
    if-nez v0, :cond_2

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    if-eqz v1, :cond_2

    .line 3925
    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableTop:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView;->mDrawables:Landroid/widget/TextView$Drawables;

    iget-object v1, v1, Landroid/widget/TextView$Drawables;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-ne p1, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 3928
    :goto_0
    return v1

    .line 3925
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v0

    .line 3928
    goto :goto_0
.end method
