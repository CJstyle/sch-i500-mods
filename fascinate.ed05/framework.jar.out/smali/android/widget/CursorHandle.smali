.class public Landroid/widget/CursorHandle;
.super Ljava/lang/Object;
.source "CursorHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorHandle$CursorHandleMenu;,
        Landroid/widget/CursorHandle$ThreadControl;,
        Landroid/widget/CursorHandle$CheckCursorHandle;,
        Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CursorHandleEditText"


# instance fields
.field private checkCursorHandle:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private mCursorBottomXPosition:I

.field private mCursorBottomYPosition:I

.field private mCursorHandleCurX:I

.field private mCursorHandleCurY:I

.field private mCursorHandleImage:Landroid/widget/ImageView;

.field private mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

.field private mCursorHandleParent:Landroid/widget/EditText;

.field private mCursorHandlePopup:Landroid/widget/PopupWindow;

.field private mCursorHandlePreX:I

.field private mCursorHandlePreY:I

.field private mCursorHandlePrevAction:I

.field private mCursorPosition:Landroid/graphics/RectF;

.field private mCursorTopXPosition:I

.field private mCursorTopYPosition:I

.field private mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

.field private mDrawableCursorHandleSelecting:Landroid/graphics/drawable/Drawable;

.field private mEditTextPrevAction:I

.field private mIMM:Landroid/view/inputmethod/InputMethodManager;

.field private mIsCursorHandleMoving:Z

.field private mIsCursorHandleOn:Z

.field private mIsThisExtractEditText:Z

.field private mPrevCursorHandleTouchX:F

.field private mPrevCursorHandleTouchY:F

.field private mPrevEditTexTouchX:F

.field private mPrevEditTexTouchY:F

.field private mSelectionStartOffset:I

.field private mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .locals 7
    .parameter "et"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean v5, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    .line 34
    iput-boolean v4, p0, Landroid/widget/CursorHandle;->mIsThisExtractEditText:Z

    .line 44
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    .line 45
    iput v2, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    .line 46
    iput v2, p0, Landroid/widget/CursorHandle;->mCursorHandlePrevAction:I

    .line 48
    iput v4, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    .line 49
    iput v4, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    .line 50
    iput v4, p0, Landroid/widget/CursorHandle;->mCursorTopXPosition:I

    .line 51
    iput v4, p0, Landroid/widget/CursorHandle;->mCursorTopYPosition:I

    .line 64
    iput-boolean v4, p0, Landroid/widget/CursorHandle;->mIsCursorHandleMoving:Z

    .line 67
    invoke-virtual {p1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    .line 68
    iput-object p1, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    .line 69
    new-instance v1, Landroid/widget/CursorHandle$ThreadControl;

    invoke-direct {v1, p0}, Landroid/widget/CursorHandle$ThreadControl;-><init>(Landroid/widget/CursorHandle;)V

    iput-object v1, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    .line 71
    iget-object v1, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    const v2, 0x1090081

    invoke-static {v1, v2, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleImage:Landroid/widget/ImageView;

    .line 73
    new-instance v1, Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    .line 76
    iget-object v1, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v1, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10803cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleSelecting:Landroid/graphics/drawable/Drawable;

    .line 79
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10803c8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 81
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 82
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;

    invoke-direct {v2, p0, v6}, Landroid/widget/CursorHandle$CursorHandleTouchInterceptor;-><init>(Landroid/widget/CursorHandle;Landroid/widget/CursorHandle$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 83
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 85
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 86
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 88
    iget-object v1, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    .line 90
    iget-object v1, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 91
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Landroid/widget/CursorHandle;->mTouchSlop:I

    .line 95
    new-instance v1, Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Landroid/widget/CursorHandle$CursorHandleMenu;-><init>(Landroid/widget/CursorHandle;Landroid/content/Context;)V

    iput-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    .line 96
    return-void
.end method

.method static synthetic access$1000(Landroid/widget/CursorHandle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Landroid/widget/CursorHandle;->mSelectionStartOffset:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/CursorHandle;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mCursorHandlePreX:I

    return p1
.end method

.method static synthetic access$1202(Landroid/widget/CursorHandle;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mCursorHandlePreY:I

    return p1
.end method

.method static synthetic access$1302(Landroid/widget/CursorHandle;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mCursorHandleCurX:I

    return p1
.end method

.method static synthetic access$1402(Landroid/widget/CursorHandle;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mCursorHandleCurY:I

    return p1
.end method

.method static synthetic access$1500(Landroid/widget/CursorHandle;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/widget/CursorHandle;->showOrDismissCursorHandle()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/CursorHandle;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$ThreadControl;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/CursorHandle;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/CursorHandle;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandlePrevAction:I

    return v0
.end method

.method static synthetic access$502(Landroid/widget/CursorHandle;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mCursorHandlePrevAction:I

    return p1
.end method

.method static synthetic access$600(Landroid/widget/CursorHandle;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Landroid/widget/CursorHandle;->mPrevCursorHandleTouchX:F

    return v0
.end method

.method static synthetic access$602(Landroid/widget/CursorHandle;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mPrevCursorHandleTouchX:F

    return p1
.end method

.method static synthetic access$700(Landroid/widget/CursorHandle;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Landroid/widget/CursorHandle;->mPrevCursorHandleTouchY:F

    return v0
.end method

.method static synthetic access$702(Landroid/widget/CursorHandle;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/widget/CursorHandle;->mPrevCursorHandleTouchY:F

    return p1
.end method

.method static synthetic access$802(Landroid/widget/CursorHandle;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Landroid/widget/CursorHandle;->mIsCursorHandleMoving:Z

    return p1
.end method

.method static synthetic access$900(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$CursorHandleMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    return-object v0
.end method

.method private showOrDismissCursorHandle()Z
    .locals 5

    .prologue
    const v4, 0x77359400

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 754
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-object v1, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getIsSoftInputMethodShowing()Z

    move-result v1

    iput-boolean v1, v0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    .line 769
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-boolean v0, v0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    if-nez v0, :cond_0

    .line 772
    const-wide/16 v0, 0xfa

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 776
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-object v1, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getIsSoftInputMethodShowing()Z

    move-result v1

    :goto_0
    iput-boolean v1, v0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    .line 780
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 818
    :goto_1
    return v0

    .line 776
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-object v2, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getIsSoftInputMethodShowing()Z

    move-result v2

    iput-boolean v2, v1, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    throw v0

    .line 785
    :cond_2
    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandlePreX:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandlePreY:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandleCurX:I

    if-eq v0, v4, :cond_4

    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandleCurY:I

    if-eq v0, v4, :cond_4

    .line 786
    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandlePreX:I

    iget v1, p0, Landroid/widget/CursorHandle;->mCursorHandleCurX:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/widget/CursorHandle;->mCursorHandlePreY:I

    iget v1, p0, Landroid/widget/CursorHandle;->mCursorHandleCurY:I

    if-eq v0, v1, :cond_4

    :cond_3
    move v0, v2

    .line 788
    goto :goto_1

    .line 796
    :cond_4
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsThisExtractEditText:Z

    if-eqz v0, :cond_5

    move v0, v3

    .line 797
    goto :goto_1

    .line 801
    :cond_5
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-boolean v0, v0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    if-nez v0, :cond_6

    move v0, v2

    .line 802
    goto :goto_1

    .line 806
    :cond_6
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-boolean v0, v0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-ne v0, v3, :cond_7

    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsThisExtractEditText:Z

    if-nez v0, :cond_7

    move v0, v2

    .line 809
    goto :goto_1

    .line 813
    :cond_7
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-boolean v0, v0, Landroid/widget/CursorHandle$ThreadControl;->isImeShowing:Z

    if-ne v0, v3, :cond_8

    iget-object v0, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v3

    .line 815
    goto :goto_1

    :cond_8
    move v0, v2

    .line 818
    goto :goto_1

    .line 773
    :catch_0
    move-exception v0

    .line 776
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-object v1, p0, Landroid/widget/CursorHandle;->mIMM:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getIsSoftInputMethodShowing()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public hideCursorHandle()V
    .locals 3

    .prologue
    .line 456
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 463
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/widget/CursorHandle;->checkCursorHandle:Ljava/lang/Thread;

    .line 464
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/CursorHandle;->mIsCursorHandleMoving:Z

    .line 466
    iget-object v1, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/CursorHandle$ThreadControl;->threadRun:Z

    .line 467
    iget-object v1, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/CursorHandle$ThreadControl;->isContextMenuShowing:Z

    .line 469
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 471
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 473
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hideCursorHandleAndMenuPost()V
    .locals 2

    .prologue
    .line 424
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/CursorHandle$1;

    invoke-direct {v1, p0}, Landroid/widget/CursorHandle$1;-><init>(Landroid/widget/CursorHandle;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public hideCursorHandleAndMenuPostDelayed(I)V
    .locals 4
    .parameter "delayMillis"

    .prologue
    .line 440
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    if-nez v0, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v0, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    new-instance v1, Landroid/widget/CursorHandle$2;

    invoke-direct {v1, p0}, Landroid/widget/CursorHandle$2;-><init>(Landroid/widget/CursorHandle;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public hideCursorHandleMenu()V
    .locals 3

    .prologue
    .line 478
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 484
    :try_start_0
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsMenuShowing:Z

    .line 486
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 490
    :cond_1
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 495
    :cond_2
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 497
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v1, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 499
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onCreateContextMenu()V
    .locals 3

    .prologue
    .line 211
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/widget/CursorHandle$ThreadControl;->isContextMenuShowing:Z

    .line 217
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 218
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 219
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 885
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 893
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 890
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 891
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 892
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 670
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 684
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 677
    if-nez p1, :cond_1

    .line 678
    :try_start_0
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 680
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 681
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 683
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)V
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 191
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 201
    :cond_3
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 202
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 203
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 204
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onScrollChanged(IIII)V
    .locals 2
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 857
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 867
    :goto_0
    return-void

    .line 861
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 862
    :try_start_0
    iget-boolean v1, p0, Landroid/widget/CursorHandle;->mIsCursorHandleMoving:Z

    if-nez v1, :cond_1

    .line 863
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 864
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 866
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "text"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 839
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 853
    :goto_0
    return-void

    .line 843
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 845
    :try_start_0
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 846
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 847
    iget-object v1, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    const v2, 0x1020029

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 850
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 851
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 852
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 105
    iget-boolean v3, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v3, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isFocused()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 116
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 117
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 121
    .local v2, y:F
    packed-switch v0, :pswitch_data_0

    .line 184
    iput v6, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    goto :goto_0

    .line 123
    :pswitch_0
    iput v0, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    .line 126
    iput v1, p0, Landroid/widget/CursorHandle;->mPrevEditTexTouchX:F

    .line 127
    iput v2, p0, Landroid/widget/CursorHandle;->mPrevEditTexTouchY:F

    .line 130
    iget-object v3, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v3

    .line 131
    :try_start_0
    iget-object v4, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/CursorHandle$ThreadControl;->isContextMenuShowing:Z

    .line 132
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 137
    :pswitch_1
    iget-object v3, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v3

    .line 138
    :try_start_1
    iget v4, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    iget-boolean v4, v4, Landroid/widget/CursorHandle$ThreadControl;->isContextMenuShowing:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/widget/CursorHandle;->checkCursorHandle:Ljava/lang/Thread;

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-gtz v4, :cond_2

    iget-object v4, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    invoke-virtual {v4}, Landroid/widget/CursorHandle$CursorHandleMenu;->isThereAnyTextInClipboard()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 147
    :cond_2
    iget-object v4, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/widget/CursorHandle$ThreadControl;->threadRun:Z

    .line 148
    iget-object v4, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/CursorHandle$ThreadControl;->threadSleep:Z

    .line 149
    iget-object v4, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/widget/CursorHandle$ThreadControl;->isContextMenuShowing:Z

    .line 152
    iget-object v4, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v5, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getIsEditTextSelecting()Z

    move-result v5

    iput-boolean v5, v4, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 157
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Landroid/widget/CursorHandle$CheckCursorHandle;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Landroid/widget/CursorHandle$CheckCursorHandle;-><init>(Landroid/widget/CursorHandle;Landroid/widget/CursorHandle$1;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v4, p0, Landroid/widget/CursorHandle;->checkCursorHandle:Ljava/lang/Thread;

    .line 158
    iget-object v4, p0, Landroid/widget/CursorHandle;->checkCursorHandle:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 168
    :goto_1
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 160
    :cond_3
    :try_start_2
    iput v0, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    .line 163
    const v4, 0x77359400

    iput v4, p0, Landroid/widget/CursorHandle;->mCursorHandlePreX:I

    .line 164
    const v4, 0x77359400

    iput v4, p0, Landroid/widget/CursorHandle;->mCursorHandlePreY:I

    .line 165
    const v4, 0x77359400

    iput v4, p0, Landroid/widget/CursorHandle;->mCursorHandleCurX:I

    .line 166
    const v4, 0x77359400

    iput v4, p0, Landroid/widget/CursorHandle;->mCursorHandleCurY:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 175
    :pswitch_2
    iget v3, p0, Landroid/widget/CursorHandle;->mTouchSlop:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/CursorHandle;->mPrevEditTexTouchX:F

    sub-float v4, v1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    iget v3, p0, Landroid/widget/CursorHandle;->mTouchSlop:I

    int-to-float v3, v3

    iget v4, p0, Landroid/widget/CursorHandle;->mPrevEditTexTouchY:F

    sub-float v4, v2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 176
    iput v5, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    goto/16 :goto_0

    .line 179
    :cond_4
    iput v6, p0, Landroid/widget/CursorHandle;->mEditTextPrevAction:I

    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasWindowFocus"

    .prologue
    .line 871
    iget-boolean v0, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    if-nez v0, :cond_0

    .line 881
    :goto_0
    return-void

    .line 875
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 876
    if-nez p1, :cond_1

    .line 877
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 878
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 880
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIsCursorHandleOn(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 100
    iput-boolean p1, p0, Landroid/widget/CursorHandle;->mIsCursorHandleOn:Z

    .line 101
    return-void
.end method

.method public setIsThisExtractEditText(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 896
    iget-object v0, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v0

    .line 897
    :try_start_0
    iput-boolean p1, p0, Landroid/widget/CursorHandle;->mIsThisExtractEditText:Z

    .line 898
    monitor-exit v0

    .line 899
    return-void

    .line 898
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public showCursorHandle()V
    .locals 11

    .prologue
    const/4 v7, -0x1

    .line 224
    iget-object v5, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v5

    .line 225
    :try_start_0
    iget-object v6, p0, Landroid/widget/CursorHandle;->checkCursorHandle:Ljava/lang/Thread;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v6

    if-nez v6, :cond_1

    .line 226
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 227
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 228
    monitor-exit v5

    .line 317
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 234
    .local v1, cursorPath:Landroid/graphics/Path;
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v3

    .line 235
    .local v3, selStart:I
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 237
    .local v2, selEnd:I
    if-eq v3, v7, :cond_2

    if-ne v2, v7, :cond_3

    .line 238
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 239
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 240
    monitor-exit v5

    goto :goto_0

    .line 316
    .end local v1           #cursorPath:Landroid/graphics/Path;
    .end local v2           #selEnd:I
    .end local v3           #selStart:I
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 245
    .restart local v1       #cursorPath:Landroid/graphics/Path;
    .restart local v2       #selEnd:I
    .restart local v3       #selStart:I
    :cond_3
    :try_start_1
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getIsEditTextSelecting()Z

    move-result v7

    iput-boolean v7, v6, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 248
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-boolean v6, v6, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    if-nez v6, :cond_4

    .line 249
    iput v2, p0, Landroid/widget/CursorHandle;->mSelectionStartOffset:I

    .line 252
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleImage:Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    :goto_1
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 262
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v6, v2, v1, v7}, Landroid/text/Layout;->getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V

    .line 264
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 269
    const/4 v6, 0x2

    new-array v4, v6, [I

    .line 270
    .local v4, tmpLocOnWin:[I
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v6, v4}, Landroid/widget/EditText;->getLocationInWindow([I)V

    .line 278
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v8, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    sub-float/2addr v7, v8

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float v0, v6, v7

    .line 280
    .local v0, bottomCenter:F
    const/4 v6, 0x0

    aget v6, v4, v6

    int-to-float v6, v6

    add-float/2addr v6, v0

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getTotalPaddingLeft()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    .line 281
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    const/4 v7, 0x1

    aget v7, v4, v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    .line 286
    iget v6, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorTopXPosition:I

    .line 287
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorPosition:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    const/4 v7, 0x1

    aget v7, v4, v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getTotalPaddingTop()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getScrollY()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorTopYPosition:I

    .line 297
    iget v6, p0, Landroid/widget/CursorHandle;->mCursorHandleCurX:I

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorHandlePreX:I

    .line 298
    iget v6, p0, Landroid/widget/CursorHandle;->mCursorHandleCurY:I

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorHandlePreY:I

    .line 299
    iget v6, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    iget-object v7, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorHandleCurX:I

    .line 300
    iget v6, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    iput v6, p0, Landroid/widget/CursorHandle;->mCursorHandleCurY:I

    .line 302
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 305
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    iget v7, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    iget-object v8, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    iget-object v9, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    iget-object v10, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 316
    :goto_2
    monitor-exit v5

    goto/16 :goto_0

    .line 254
    .end local v0           #bottomCenter:F
    .end local v4           #tmpLocOnWin:[I
    :cond_4
    iput v3, p0, Landroid/widget/CursorHandle;->mSelectionStartOffset:I

    .line 257
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandleImage:Landroid/widget/ImageView;

    iget-object v7, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleSelecting:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 311
    .restart local v0       #bottomCenter:F
    .restart local v4       #tmpLocOnWin:[I
    :cond_5
    iget-object v6, p0, Landroid/widget/CursorHandle;->mCursorHandlePopup:Landroid/widget/PopupWindow;

    iget-object v7, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    const/4 v8, 0x0

    iget v9, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    iget-object v10, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public showCursorHandleMenu()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 321
    iget-object v9, p0, Landroid/widget/CursorHandle;->mThreadControl:Landroid/widget/CursorHandle$ThreadControl;

    monitor-enter v9

    .line 324
    :try_start_0
    iget-object v10, p0, Landroid/widget/CursorHandle;->checkCursorHandle:Ljava/lang/Thread;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v10

    if-nez v10, :cond_1

    .line 325
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandle()V

    .line 326
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 327
    monitor-exit v9

    .line 420
    :goto_0
    return-void

    .line 330
    :cond_1
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-boolean v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsMenuShowing:Z

    if-nez v10, :cond_2

    .line 331
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 332
    monitor-exit v9

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 335
    :cond_2
    :try_start_1
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    invoke-virtual {v10}, Landroid/widget/CursorHandle$CursorHandleMenu;->updateButtonVisibility()V

    .line 336
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    invoke-virtual {v10}, Landroid/widget/CursorHandle$CursorHandleMenu;->calcMenuWidthHeight()V

    .line 339
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    if-nez v10, :cond_3

    .line 340
    invoke-virtual {p0}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 341
    monitor-exit v9

    goto :goto_0

    .line 345
    :cond_3
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v8

    .line 346
    .local v8, widthArrowX:I
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v1

    .line 347
    .local v1, heightArrowY:I
    iget v10, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    div-int/lit8 v11, v8, 0x2

    sub-int/2addr v10, v11

    sub-int v2, v10, v13

    .line 348
    .local v2, posArrowX:I
    iget v10, p0, Landroid/widget/CursorHandle;->mCursorTopYPosition:I

    sub-int/2addr v10, v1

    add-int/lit8 v3, v10, 0x0

    .line 351
    .local v3, posArrowY:I
    iget v10, p0, Landroid/widget/CursorHandle;->mCursorBottomXPosition:I

    iget-object v11, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    sub-int v4, v10, v11

    .line 352
    .local v4, posX:I
    iget v10, p0, Landroid/widget/CursorHandle;->mCursorTopYPosition:I

    sub-int/2addr v10, v1

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v11, v11, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v11}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    add-int/lit8 v5, v10, 0x2

    .line 353
    .local v5, posY:I
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    .line 354
    .local v7, width:I
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    .line 357
    .local v0, height:I
    iget-object v10, p0, Landroid/widget/CursorHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 360
    .local v6, screenWidth:I
    if-gtz v4, :cond_6

    .line 361
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/high16 v11, 0x4000

    invoke-virtual {v10, v11}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v10

    mul-int/lit8 v4, v10, -0x1

    .line 371
    :cond_4
    :goto_1
    const/16 v10, 0x28

    if-gt v5, v10, :cond_a

    .line 373
    iget v10, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    iget-object v11, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v10, v1

    sub-int v5, v10, v13

    .line 376
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    if-eqz v10, :cond_5

    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 377
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->dismiss()V

    .line 380
    :cond_5
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/high16 v11, 0x4040

    invoke-virtual {v10, v11}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v10

    sub-int/2addr v5, v10

    .line 382
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 383
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10, v4, v5, v7, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 389
    :goto_2
    iget v10, p0, Landroid/widget/CursorHandle;->mCursorBottomYPosition:I

    iget-object v11, p0, Landroid/widget/CursorHandle;->mDrawableCursorHandleNormal:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v3, v10, 0x0

    .line 390
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 391
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v10, v2, v3, v8, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 419
    :goto_3
    monitor-exit v9

    goto/16 :goto_0

    .line 362
    :cond_6
    add-int v10, v4, v7

    if-le v10, v6, :cond_4

    .line 364
    add-int v10, v4, v7

    sub-int/2addr v10, v6

    div-int/lit8 v11, v7, 0x2

    if-le v10, v11, :cond_7

    .line 365
    sub-int v10, v6, v7

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/high16 v12, 0x4190

    invoke-virtual {v11, v12}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v11

    add-int v4, v10, v11

    goto :goto_1

    .line 367
    :cond_7
    sub-int v4, v6, v7

    goto :goto_1

    .line 385
    :cond_8
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2

    .line 393
    :cond_9
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_3

    .line 399
    :cond_a
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    if-eqz v10, :cond_b

    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 400
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->dismiss()V

    .line 404
    :cond_b
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    const/high16 v11, 0x4188

    invoke-virtual {v10, v11}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v10

    add-int/2addr v5, v10

    .line 406
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_c

    .line 407
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v10, v4, v5, v7, v0}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 413
    :goto_4
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v10}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 414
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v10, v2, v3, v8, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_3

    .line 409
    :cond_c
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v4, v5}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_4

    .line 416
    :cond_d
    iget-object v10, p0, Landroid/widget/CursorHandle;->mCursorHandleMenu:Landroid/widget/CursorHandle$CursorHandleMenu;

    iget-object v10, v10, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    iget-object v11, p0, Landroid/widget/CursorHandle;->mCursorHandleParent:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12, v2, v3}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3
.end method
