.class public Lcom/sec/android/app/camera/widget/TwGridView;
.super Landroid/widget/RelativeLayout;
.source "TwGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;,
        Lcom/sec/android/app/camera/widget/TwGridView$TouchEventConsumer;,
        Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    }
.end annotation


# static fields
.field public static final DESCRIPTION_IMAGE:I = 0x7

.field public static final DESCRIPTION_TEXT:I = 0x6

.field public static final DESCRIPTION_TITLE_TEXT:I = 0x5

.field private static final FIRSTPAGE:I = 0x1

.field public static final GRID_PLAIN:I = 0x3

.field public static final GRID_PLAIN_IN_SIDE:I = 0x4

.field public static final GRID_WITH_DESC_OK:I = 0x1

.field public static final GRID_WITH_OK:I = 0x2

.field public static final IMAGE_DIM:I = 0x2

.field public static final IMAGE_NORMAL:I = 0x0

.field public static final IMAGE_PRESS:I = 0x1

.field public static final MENU_ID:I = 0x4

.field private static final SHOW_TEXT:I = 0x1

.field public static final STRING_RESID:I = 0x3


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mClickSound:Z

.field private mCurrentPage:I

.field private mDescriptionPanel:Landroid/view/View;

.field private mFocusID:I

.field private mGridAdapter:Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

.field private mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

.field mGridButtonListener:Landroid/view/View$OnClickListener;

.field private mGridDescriptionX:I

.field private mGridDescriptionY:I

.field private mGridLayoutHeight:I

.field private mGridLayoutWidth:I

.field private mGridLayoutWithoutScroll:I

.field private mGridMaxItemsPerPage:I

.field private mGridSaveButtonX:I

.field private mGridSaveButtonY:I

.field private mGridScrollX:I

.field private mGridScrollY:I

.field private mGridStyle:I

.field private mGridView:Landroid/widget/GridView;

.field private mGridViewLayout:Landroid/widget/RelativeLayout;

.field private mGridViewLayoutX:I

.field private mGridViewLayoutY:I

.field private mImageButtonX:I

.field private mImageButtonY:I

.field private mImageText:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

.field private mNumOfColumns:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mParentContext:Landroid/content/Context;

.field private mSaveButton:Landroid/widget/ImageButton;

.field private mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

.field mScrollListener:Landroid/view/View$OnClickListener;

.field private mSelectID:I

.field private mTextSizeSmall:Z

.field private mTitleTextView:Landroid/widget/TextView;

.field private mToTalPages:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 163
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    .line 68
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 73
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    .line 90
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickSound:Z

    .line 91
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTextSizeSmall:Z

    .line 96
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    .line 103
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    .line 116
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 124
    iput v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageText:I

    .line 129
    iput v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonX:I

    .line 130
    iput v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonY:I

    .line 132
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    .line 628
    new-instance v0, Lcom/sec/android/app/camera/widget/TwGridView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView$2;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonListener:Landroid/view/View$OnClickListener;

    .line 647
    new-instance v0, Lcom/sec/android/app/camera/widget/TwGridView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView$3;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollListener:Landroid/view/View$OnClickListener;

    .line 164
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    .line 68
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 73
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    .line 90
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickSound:Z

    .line 91
    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTextSizeSmall:Z

    .line 96
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    .line 103
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    .line 116
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 124
    iput v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageText:I

    .line 129
    iput v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonX:I

    .line 130
    iput v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonY:I

    .line 132
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    .line 628
    new-instance v0, Lcom/sec/android/app/camera/widget/TwGridView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView$2;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonListener:Landroid/view/View$OnClickListener;

    .line 647
    new-instance v0, Lcom/sec/android/app/camera/widget/TwGridView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwGridView$3;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollListener:Landroid/view/View$OnClickListener;

    .line 201
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 203
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/widget/TwGridView;->initialize(Landroid/util/AttributeSet;)V

    .line 204
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/MenuResourceBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/widget/TwGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSelectID:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/widget/TwGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSelectID:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/widget/TwGridView;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/widget/TwGridView;)Landroid/view/View$OnClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/widget/TwGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/widget/TwGridView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->updateDescriptionPanel(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/TwGridView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/widget/TwGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonX:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/widget/TwGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonY:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/widget/TwGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageText:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/widget/TwGridView;)Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/widget/TwGridView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/camera/widget/TwGridView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/widget/TwGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickSound:Z

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/widget/TwGridView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTextSizeSmall:Z

    return v0
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "attrs"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeTitleTextView(Landroid/util/AttributeSet;)V

    .line 211
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->initializeGridView(Landroid/util/AttributeSet;)V

    .line 212
    return-void
.end method

.method private initializeGridView(Landroid/util/AttributeSet;)V
    .locals 8
    .parameter "attrs"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 248
    const v1, 0x7f020213

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwGridView;->setBackgroundResource(I)V

    .line 250
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwGridView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 251
    .local v0, gridData:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    .line 253
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v6, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mNumOfColumns:I

    .line 255
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    .line 258
    new-instance v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0x9

    const v3, 0x7f020093

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonBackgroundNormal:I

    .line 261
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0xa

    const v3, 0x7f020094

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonBackgroundFocus:I

    .line 263
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonTextSize:I

    .line 265
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonLineX:I

    .line 267
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0xd

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonLineY:I

    .line 269
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/4 v2, 0x7

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonWidth:I

    .line 271
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0x8

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHeight:I

    .line 273
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0xf

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHorizontalSpacing:I

    .line 276
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    const/16 v2, 0xe

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v1, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonVerticalSpacing:I

    .line 280
    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridDescriptionX:I

    .line 282
    const/16 v1, 0x14

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridDescriptionY:I

    .line 285
    const/16 v1, 0x10

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridScrollX:I

    .line 287
    const/16 v1, 0x11

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridScrollY:I

    .line 289
    const/16 v1, 0x12

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWithoutScroll:I

    .line 292
    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridSaveButtonX:I

    .line 294
    const/16 v1, 0x16

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridSaveButtonY:I

    .line 297
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayout:Landroid/widget/RelativeLayout;

    .line 302
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHorizontalSpacing:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutX:I

    .line 305
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonVerticalSpacing:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutY:I

    .line 309
    const/16 v1, 0x17

    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageText:I

    .line 310
    const/16 v1, 0x18

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonX:I

    .line 311
    const/16 v1, 0x19

    invoke-virtual {v0, v1, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mImageButtonY:I

    .line 312
    new-instance v1, Lcom/sec/android/app/camera/widget/TwGridView$1;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p1}, Lcom/sec/android/app/camera/widget/TwGridView$1;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    .line 346
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mNumOfColumns:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 347
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v7}, Landroid/widget/GridView;->setGravity(I)V

    .line 348
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHorizontalSpacing:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 349
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonVerticalSpacing:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 350
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v2, v2, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 351
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setStretchMode(I)V

    .line 352
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setVerticalFadingEdgeEnabled(Z)V

    .line 353
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setVerticalScrollBarEnabled(Z)V

    .line 354
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setScrollingCacheEnabled(Z)V

    .line 355
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setDrawingCacheEnabled(Z)V

    .line 356
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5, v5, v5, v5}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 359
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 360
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setFocusableInTouchMode(Z)V

    .line 362
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWidth:I

    .line 364
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    .line 367
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 368
    return-void
.end method

.method private initializeTitleTextView(Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "attrs"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 219
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    sget-object v4, Lcom/sec/android/app/camera/R$styleable;->TwGridViewTitle:[I

    invoke-virtual {v3, p1, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 220
    .local v2, title:Landroid/content/res/TypedArray;
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    .local v1, textData:Ljava/lang/CharSequence;
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    .line 223
    if-eqz v1, :cond_0

    .line 224
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f09

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 227
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 228
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f08

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    const/high16 v4, 0x4000

    const/high16 v5, -0x100

    invoke-virtual {v3, v4, v8, v8, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 232
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 235
    .local v0, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-virtual {v0, v3, v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 239
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 242
    return-void
.end method

.method private makeBackButton()V
    .locals 4

    .prologue
    .line 486
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 487
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0a00a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mBackButton:Landroid/widget/ImageButton;

    .line 488
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;)V

    .line 489
    return-void
.end method

.method private makeDescriptionOkPanel()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 457
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    if-ne v2, v7, :cond_0

    .line 459
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030013

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    .line 461
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 462
    .local v0, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridDescriptionX:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridDescriptionY:I

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 463
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 464
    const/4 v0, 0x0

    .line 465
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I

    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/widget/TwGridView;->updateDescriptionPanel(I)V

    .line 467
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    new-instance v3, Lcom/sec/android/app/camera/widget/TwGridView$TouchEventConsumer;

    invoke-direct {v3, p0, v6}, Lcom/sec/android/app/camera/widget/TwGridView$TouchEventConsumer;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;Lcom/sec/android/app/camera/widget/TwGridView$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 470
    .end local v0           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    if-ne v2, v7, :cond_2

    .line 471
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002d

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 472
    .local v1, v:Landroid/view/View;
    const v2, 0x7f0a00d5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    .line 473
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 474
    .restart local v0       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridSaveButtonX:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridSaveButtonY:I

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 475
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 483
    .end local v0           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v1           #v:Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 476
    :cond_2
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 477
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03002e

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 478
    .restart local v1       #v:Landroid/view/View;
    const v2, 0x7f0a00d6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    .line 479
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 480
    .restart local v0       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridSaveButtonX:I

    iget v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridSaveButtonY:I

    invoke-virtual {v0, v2, v3, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 481
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setScrollBarText()V
    .locals 3

    .prologue
    .line 503
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/widget/TwScroller;->setPageText(Ljava/lang/String;)V

    .line 506
    :cond_0
    return-void
.end method

.method private updateDescriptionPanel(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 599
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, p1}, Lcom/sec/android/app/camera/MenuResourceBase;->findBundle(II)Lcom/sec/android/app/camera/MenuResourceBundle;

    move-result-object v0

    .line 601
    .local v0, bundle:Lcom/sec/android/app/camera/MenuResourceBundle;
    if-eqz v0, :cond_0

    .line 602
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    const v3, 0x7f0a0072

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 604
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    const v3, 0x7f0a0074

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 605
    .local v1, text:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    .end local v1           #text:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private updatePageSize()V
    .locals 7

    .prologue
    .line 757
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    rem-int v1, v3, v4

    .line 759
    .local v1, lastPageItems:I
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    if-ne v3, v4, :cond_1

    if-lez v1, :cond_1

    .line 760
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    sub-int/2addr v3, v1

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mNumOfColumns:I

    div-int v2, v3, v4

    .line 761
    .local v2, removeNumOfRows:I
    iget v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    iget-object v4, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v4, v4, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHeight:I

    iget-object v5, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v5, v5, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonVerticalSpacing:I

    add-int/2addr v4, v5

    mul-int/2addr v4, v2

    sub-int v0, v3, v4

    .line 762
    .local v0, gridLayoutHeight:I
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWidth:I

    invoke-direct {v4, v5, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    .end local v0           #gridLayoutHeight:I
    .end local v2           #removeNumOfRows:I
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setScrollBarText()V

    .line 769
    return-void

    .line 764
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    if-ge v3, v4, :cond_0

    .line 765
    iget-object v3, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayout:Landroid/widget/RelativeLayout;

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public changeSelectedItem(I)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 661
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 662
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 663
    .local v1, item:Lcom/sec/android/app/camera/widget/TwImageButton;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 664
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->setPressed()V

    .line 661
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 666
    :cond_0
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    goto :goto_1

    .line 670
    .end local v1           #item:Lcom/sec/android/app/camera/widget/TwImageButton;
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I

    .line 671
    return-void
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    if-eqz v1, :cond_0

    .line 169
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwImageButton;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->clear()V

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v0           #i:I
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    .line 175
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 177
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    .line 179
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    .line 180
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    .line 181
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridAdapter:Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

    .line 182
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayout:Landroid/widget/RelativeLayout;

    .line 184
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwScroller;->clear()V

    .line 186
    :cond_1
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    .line 188
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mDescriptionPanel:Landroid/view/View;

    .line 190
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    .line 191
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mBackButton:Landroid/widget/ImageButton;

    .line 193
    iput-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 194
    return-void
.end method

.method public findPosFromTag(I)I
    .locals 3
    .parameter "tag"

    .prologue
    .line 675
    const/4 v0, 0x0

    .local v0, position:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/MenuResourceBase;->getItem(I)Lcom/sec/android/app/camera/MenuResourceBundle;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/MenuResourceBundle;->getResourceID(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    move v1, v0

    .line 681
    :goto_1
    return v1

    .line 675
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 681
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getMenuBase()Lcom/sec/android/app/camera/MenuResourceBase;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    return-object v0
.end method

.method public initializeView(Lcom/sec/android/app/camera/MenuResourceBase;I)V
    .locals 12
    .parameter "menuBase"
    .parameter "selectedID"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x2

    const/4 v9, 0x0

    .line 374
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    .line 376
    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 377
    .local v2, rl:Landroid/widget/RelativeLayout;
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSelectID:I

    .line 378
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I

    .line 379
    new-instance v6, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

    invoke-direct {v6, p0}, Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;-><init>(Lcom/sec/android/app/camera/widget/TwGridView;)V

    iput-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridAdapter:Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

    .line 380
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayout:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 382
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWidth:I

    iget v7, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 383
    .local v3, rp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 384
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    const/4 v3, 0x0

    .line 387
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWidth:I

    iget v7, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutHeight:I

    invoke-direct {v3, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 390
    .restart local v3       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutX:I

    .line 391
    .local v5, tGridViewLayoutX:I
    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWithoutScroll:I

    if-nez v6, :cond_0

    .line 392
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    if-gt v6, v7, :cond_0

    .line 393
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mParentContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06006a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 394
    .local v4, scrollerWidth:F
    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridScrollX:I

    iget v7, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutX:I

    iget v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridLayoutWidth:I

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridButtonData:Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;

    iget v8, v8, Lcom/sec/android/app/camera/widget/TwGridView$GridButtonData;->mGridButtonHorizontalSpacing:I

    sub-int/2addr v7, v8

    sub-int/2addr v6, v7

    int-to-float v0, v6

    .line 396
    .local v0, gapWidth:F
    int-to-float v6, v5

    add-float v7, v4, v0

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 400
    .end local v0           #gapWidth:F
    .end local v4           #scrollerWidth:F
    :cond_0
    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridViewLayoutY:I

    invoke-virtual {v3, v5, v6, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 401
    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 402
    const/4 v3, 0x0

    .line 404
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridAdapter:Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 406
    const/4 v6, 0x1

    iput v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    .line 407
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    div-int/2addr v6, v7

    iput v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    .line 408
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    rem-int/2addr v6, v7

    if-lez v6, :cond_1

    .line 409
    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    .line 412
    :cond_1
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/MenuResourceBase;->getNumberOfItems()I

    move-result v6

    iget v7, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    if-le v6, v7, :cond_4

    .line 413
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f03001f

    invoke-virtual {v6, v7, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/camera/widget/TwScroller;

    iput-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    .line 414
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v3           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v3, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 415
    .restart local v3       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridScrollX:I

    iget v7, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridScrollY:I

    invoke-virtual {v3, v6, v7, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 416
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    invoke-virtual {p0, v6, v3}, Lcom/sec/android/app/camera/widget/TwGridView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    invoke-virtual {v6, v9}, Lcom/sec/android/app/camera/widget/TwScroller;->setVisibility(I)V

    .line 418
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->setScrollBarText()V

    .line 419
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    iget-object v7, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/camera/widget/TwScroller;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    const/4 v3, 0x0

    .line 425
    :goto_0
    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v7, 0x3

    if-eq v6, v7, :cond_2

    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    .line 426
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->makeDescriptionOkPanel()V

    .line 435
    :cond_2
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwGridView;->findPosFromTag(I)I

    move-result v1

    .line 436
    .local v1, position:I
    iget v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    div-int v6, v1, v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    .line 437
    iget-object v6, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    if-eqz v6, :cond_3

    .line 438
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->updatePageSize()V

    .line 440
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->scrollToPageHeadItem()V

    .line 441
    return-void

    .line 422
    .end local v1           #position:I
    :cond_4
    iput-object v11, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mScrollBar:Lcom/sec/android/app/camera/widget/TwScroller;

    goto :goto_0
.end method

.method protected processScrollDown()V
    .locals 2

    .prologue
    .line 727
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    if-ne v0, v1, :cond_0

    .line 728
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    .line 732
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->updatePageSize()V

    .line 733
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridAdapter:Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 735
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->scrollToPageHeadItem()V

    .line 736
    return-void

    .line 730
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    goto :goto_0
.end method

.method protected processScrollUp()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 742
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    if-ne v0, v1, :cond_0

    .line 743
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mToTalPages:I

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    .line 747
    :goto_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->updatePageSize()V

    .line 748
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridAdapter:Lcom/sec/android/app/camera/widget/TwGridView$GridViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 750
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->scrollToPageHeadItem()V

    .line 751
    return-void

    .line 745
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    goto :goto_0
.end method

.method scrollToPageHeadItem()V
    .locals 3

    .prologue
    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    .line 721
    return-void
.end method

.method public setClickSoundDisabled()V
    .locals 3

    .prologue
    .line 708
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mClickSound:Z

    .line 709
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 710
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/widget/TwImageButton;

    .line 711
    .local v1, item:Lcom/sec/android/app/camera/widget/TwImageButton;
    invoke-virtual {v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    .line 709
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 713
    .end local v1           #item:Lcom/sec/android/app/camera/widget/TwImageButton;
    :cond_0
    return-void
.end method

.method public setCurrentSelectedItem(I)V
    .locals 4
    .parameter "tag"

    .prologue
    .line 685
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mFocusID:I

    .line 686
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSelectID:I

    .line 687
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->changeSelectedItem(I)V

    .line 689
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->findPosFromTag(I)I

    move-result v1

    .line 690
    .local v1, position:I
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridMaxItemsPerPage:I

    div-int v2, v1, v2

    add-int/lit8 v0, v2, 0x1

    .line 692
    .local v0, page:I
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    if-le v0, v2, :cond_0

    .line 693
    :goto_0
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    if-eq v0, v2, :cond_1

    .line 694
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->processScrollDown()V

    goto :goto_0

    .line 696
    :cond_0
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    if-ge v0, v2, :cond_1

    .line 697
    :goto_1
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mCurrentPage:I

    if-eq v0, v2, :cond_1

    .line 698
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwGridView;->processScrollUp()V

    goto :goto_1

    .line 702
    :cond_1
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 703
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/widget/TwGridView;->updateDescriptionPanel(I)V

    .line 705
    :cond_2
    return-void
.end method

.method public setMenuBase(Lcom/sec/android/app/camera/MenuResourceBase;)V
    .locals 0
    .parameter "menuBase"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mMenuBase:Lcom/sec/android/app/camera/MenuResourceBase;

    .line 450
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "clickListener"

    .prologue
    .line 613
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 614
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mGridStyle:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mSaveButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    :cond_0
    return-void
.end method

.method public setTextSizeSmall()V
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTextSizeSmall:Z

    .line 717
    return-void
.end method

.method public setTitleText(Ljava/lang/String;)V
    .locals 1
    .parameter "titleText"

    .prologue
    .line 495
    if-eqz p1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwGridView;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 497
    :cond_0
    return-void
.end method
