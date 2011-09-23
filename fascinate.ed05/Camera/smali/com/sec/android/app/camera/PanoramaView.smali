.class public Lcom/sec/android/app/camera/PanoramaView;
.super Lcom/sec/android/app/camera/MenuBase;
.source "PanoramaView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;,
        Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;,
        Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;,
        Lcom/sec/android/app/camera/PanoramaView$PanoramaShotCallback;
    }
.end annotation


# static fields
.field public static final PANORAMASHOT_CAPTURE_END:I = 0x3

.field public static final PANORAMA_CAPTURE_INIT:I = 0x0

.field public static final PANORAMA_DIRECTION_DOWN:I = 0x3

.field public static final PANORAMA_DIRECTION_LEFT:I = 0x0

.field public static final PANORAMA_DIRECTION_RIGHT:I = 0x2

.field public static final PANORAMA_DIRECTION_UP:I = 0x1

.field public static final PANORAMA_MAX_IMAGE_COUNT:I = 0xa

.field public static final PANORAMA_SAVING_COMPLETE:I = 0x5

.field private static final TAG:Ljava/lang/String; = "PanoramaView"

.field private static mArrowResource:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field


# instance fields
.field private mDirection:I

.field private mDirectionArrows:[Landroid/widget/ImageView;

.field private mPanoramaLayout:Landroid/widget/RelativeLayout;

.field private mPanoramaProgress:I

.field private mPanoramaProgressBar:Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;

.field private mPanoramaProgressText:Landroid/widget/TextView;

.field private mPanoramaProgressTextMarginLeft:I

.field private mPanoramaProgressTextMarginRight:I

.field private mPanoramaProgressTextMarginTop:I

.field private mPanoramaProgressTextSize:I

.field private mPanoramaProgressbarHeight:I

.field private mPanoramaProgressbarMarginLeft:I

.field private mPanoramaProgressbarMarginTop:I

.field private mPanoramaProgressbarWidth:I

.field private mPanoramaRect:Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;

.field private mPanoramaRectCameraIcon:Landroid/widget/ImageView;

.field private mPanoramaRectCameraIconHeight:I

.field private mPanoramaRectCameraIconMarginLeft:I

.field private mPanoramaRectCameraIconMarginTop:I

.field private mPanoramaRectCameraIconWidth:I

.field private mPanoramaRectDownArrow:Landroid/widget/ImageView;

.field private mPanoramaRectDownArrowMarginLeft:I

.field private mPanoramaRectDownArrowMarginTop:I

.field private mPanoramaRectHeight:I

.field private mPanoramaRectLayout:Landroid/widget/ImageView;

.field private mPanoramaRectLayoutHeight:I

.field private mPanoramaRectLayoutMarginTop:I

.field private mPanoramaRectLayoutMaringLeft:I

.field private mPanoramaRectLayoutWidth:I

.field private mPanoramaRectLeftArrow:Landroid/widget/ImageView;

.field private mPanoramaRectLeftArrowHeight:I

.field private mPanoramaRectLeftArrowMarginLeft:I

.field private mPanoramaRectLeftArrowMarginTop:I

.field private mPanoramaRectLeftArrowWidth:I

.field private mPanoramaRectRightArrow:Landroid/widget/ImageView;

.field private mPanoramaRectRightArrowMarginLeft:I

.field private mPanoramaRectRightArrowMarginTop:I

.field private mPanoramaRectUpArrow:Landroid/widget/ImageView;

.field private mPanoramaRectUpArrowHeight:I

.field private mPanoramaRectUpArrowMarginLeft:I

.field private mPanoramaRectUpArrowMarginTop:I

.field private mPanoramaRectUpArrowWidth:I

.field private mPanoramaRectWidth:I

.field private mPostCaptureLayout:Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;

.field private mPostCaptureLayoutHeight:I

.field private mPostCaptureLayoutMarginLeft:I

.field private mPostCaptureLayoutMarginTop:I

.field private mPostCaptureLayoutWidth:I

.field private mPostCaptureProgressBarHeight:I

.field private mPostCaptureProgressBarMarginLeft:I

.field private mPostCaptureProgressBarMarginTop:I

.field private mPostCaptureProgressBarWidth:I

.field private mPostCaptureTextViewBottomMargin:I

.field private mPostCaptureTextViewSize:I

.field private mPostCaptureTextViewTopMargin:I

.field private mViewsToHide:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private shotCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/PanoramaView;->mArrowResource:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 1
    .parameter "activityContext"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v0, 0x0

    .line 138
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 57
    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->shotCount:I

    .line 63
    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mDirection:I

    .line 64
    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgress:I

    .line 69
    const/4 v0, 0x4

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mDirectionArrows:[Landroid/widget/ImageView;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mViewsToHide:Ljava/util/List;

    .line 140
    invoke-direct {p0}, Lcom/sec/android/app/camera/PanoramaView;->init()V

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/PanoramaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/PanoramaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/PanoramaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureTextViewSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/PanoramaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureTextViewTopMargin:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/PanoramaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureTextViewBottomMargin:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/PanoramaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureProgressBarWidth:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/PanoramaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureProgressBarHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/PanoramaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureProgressBarMarginLeft:I

    return v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/PanoramaView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureProgressBarMarginTop:I

    return v0
.end method

.method private addImageResources(Landroid/widget/ImageView;IIIII)V
    .locals 2
    .parameter "imageView"
    .parameter "imageID"
    .parameter "xPos"
    .parameter "yPos"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 250
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 252
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p5, p6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 255
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 256
    iput p4, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 258
    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 259
    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mViewsToHide:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a00b2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaLayout:Landroid/widget/RelativeLayout;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressbarWidth:I

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressbarHeight:I

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressbarMarginLeft:I

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressbarMarginTop:I

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLayoutWidth:I

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLayoutHeight:I

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLayoutMaringLeft:I

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLayoutMarginTop:I

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectCameraIconMarginLeft:I

    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectCameraIconMarginTop:I

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectCameraIconWidth:I

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectCameraIconHeight:I

    .line 174
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrowMarginLeft:I

    .line 176
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrowWidth:I

    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrowHeight:I

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrowMarginTop:I

    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrowMarginLeft:I

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrowWidth:I

    .line 187
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrowHeight:I

    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrowMarginTop:I

    .line 192
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectDownArrowMarginLeft:I

    .line 194
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectDownArrowMarginTop:I

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectRightArrowMarginLeft:I

    .line 199
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectRightArrowMarginTop:I

    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayoutMarginLeft:I

    .line 204
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayoutWidth:I

    .line 206
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayoutHeight:I

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayoutMarginTop:I

    .line 211
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressTextMarginRight:I

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressTextMarginLeft:I

    .line 215
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressTextMarginTop:I

    .line 217
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressTextSize:I

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectWidth:I

    .line 222
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectHeight:I

    .line 225
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureTextViewTopMargin:I

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureTextViewBottomMargin:I

    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureTextViewSize:I

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureProgressBarWidth:I

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureProgressBarHeight:I

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060058

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureProgressBarMarginLeft:I

    .line 238
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060059

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureProgressBarMarginTop:I

    .line 246
    return-void
.end method


# virtual methods
.method public hidePanoramaLayout()V
    .locals 4

    .prologue
    .line 352
    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView;->mViewsToHide:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 353
    .local v1, listSize:I
    const/4 v0, 0x0

    .local v0, ix:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 354
    iget-object v3, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView;->mViewsToHide:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 353
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView;->mViewsToHide:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 357
    const/4 v2, 0x0

    iput v2, p0, Lcom/sec/android/app/camera/PanoramaView;->shotCount:I

    .line 358
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayout:Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->removeAllViews()V

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 568
    return-void
.end method

.method public initParams(Lcom/sec/android/app/camera/CameraSideMenu;)V
    .locals 0
    .parameter "cameraSideMenu"

    .prologue
    .line 571
    invoke-virtual {p0}, Lcom/sec/android/app/camera/PanoramaView;->showPanoramaLayout()V

    .line 572
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 408
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 401
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00a4

    if-ne v0, v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 403
    :cond_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 404
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 575
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 589
    :goto_0
    return v0

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 580
    goto :goto_0

    .line 583
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayout:Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 585
    goto :goto_0

    :cond_2
    move v0, v1

    .line 589
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 593
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v1

    .line 607
    :goto_0
    return v0

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 598
    goto :goto_0

    .line 601
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayout:Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    .line 603
    goto :goto_0

    :cond_2
    move v0, v1

    .line 607
    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 394
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgress:I

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressBar:Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgress:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->setProgress(I)V

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRect:Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->reset()V

    .line 397
    return-void
.end method

.method public setPanoramaDirection(I)V
    .locals 5
    .parameter "direction"

    .prologue
    .line 374
    iput p1, p0, Lcom/sec/android/app/camera/PanoramaView;->mDirection:I

    .line 375
    const/4 v1, 0x0

    .local v1, ix:I
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/PanoramaView;->mDirectionArrows:[Landroid/widget/ImageView;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 376
    iget v3, p0, Lcom/sec/android/app/camera/PanoramaView;->mDirection:I

    if-eq v3, v1, :cond_0

    .line 377
    iget-object v3, p0, Lcom/sec/android/app/camera/PanoramaView;->mDirectionArrows:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 379
    :cond_0
    sget-object v3, Lcom/sec/android/app/camera/PanoramaView;->mArrowResource:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v0, v3

    check-cast v0, [I

    move-object v2, v0

    .line 380
    .local v2, resourceArray:[I
    iget-object v3, p0, Lcom/sec/android/app/camera/PanoramaView;->mDirectionArrows:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 381
    iget-object v3, p0, Lcom/sec/android/app/camera/PanoramaView;->mDirectionArrows:[Landroid/widget/ImageView;

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 384
    .end local v2           #resourceArray:[I
    :cond_1
    return-void
.end method

.method public setPanoramaProgressIncreased()V
    .locals 3

    .prologue
    .line 387
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->shotCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->shotCount:I

    iput v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgress:I

    .line 388
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressBar:Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgress:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->setProgress(I)V

    .line 389
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    return-void
.end method

.method public setPanoramaRectParams(II)V
    .locals 1
    .parameter "xPos"
    .parameter "yPos"

    .prologue
    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRect:Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;->setPanoramaRectParams(II)V

    .line 416
    return-void
.end method

.method public setPostCaptureSavingProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 411
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayout:Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->setSavingProgress(I)V

    .line 412
    return-void
.end method

.method public showPanoramaLayout()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, -0x2

    const/4 v9, 0x2

    .line 266
    new-instance v0, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;-><init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressBar:Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;

    .line 268
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressbarWidth:I

    iget v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressbarHeight:I

    invoke-direct {v7, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 270
    .local v7, panoramaProgressBarLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressbarMarginLeft:I

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 271
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressbarMarginTop:I

    iput v0, v7, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressBar:Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;

    iget v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressbarWidth:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->setMinimumWidth(I)V

    .line 273
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressBar:Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;

    invoke-virtual {v0, v1, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 278
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLayout:Landroid/widget/ImageView;

    .line 279
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectCameraIcon:Landroid/widget/ImageView;

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLayout:Landroid/widget/ImageView;

    const v2, 0x7f020288

    iget v3, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLayoutMaringLeft:I

    iget v4, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLayoutMarginTop:I

    iget v5, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLayoutWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLayoutHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/PanoramaView;->addImageResources(Landroid/widget/ImageView;IIIII)V

    .line 284
    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectCameraIcon:Landroid/widget/ImageView;

    const v2, 0x7f020287

    iget v3, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectCameraIconMarginLeft:I

    iget v4, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectCameraIconMarginTop:I

    iget v5, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectCameraIconWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectCameraIconHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/PanoramaView;->addImageResources(Landroid/widget/ImageView;IIIII)V

    .line 289
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrow:Landroid/widget/ImageView;

    .line 290
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectRightArrow:Landroid/widget/ImageView;

    .line 291
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectDownArrow:Landroid/widget/ImageView;

    .line 292
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrow:Landroid/widget/ImageView;

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrow:Landroid/widget/ImageView;

    const v2, 0x7f020285

    iget v3, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrowMarginLeft:I

    iget v4, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrowMarginTop:I

    iget v5, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrowWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrowHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/PanoramaView;->addImageResources(Landroid/widget/ImageView;IIIII)V

    .line 297
    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectRightArrow:Landroid/widget/ImageView;

    const v2, 0x7f020283

    iget v3, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectRightArrowMarginLeft:I

    iget v4, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectRightArrowMarginTop:I

    iget v5, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrowWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrowHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/PanoramaView;->addImageResources(Landroid/widget/ImageView;IIIII)V

    .line 300
    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrow:Landroid/widget/ImageView;

    const v2, 0x7f020281

    iget v3, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrowMarginLeft:I

    iget v4, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrowMarginTop:I

    iget v5, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrowWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrowHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/PanoramaView;->addImageResources(Landroid/widget/ImageView;IIIII)V

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectDownArrow:Landroid/widget/ImageView;

    const v2, 0x7f02027f

    iget v3, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectDownArrowMarginLeft:I

    iget v4, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectDownArrowMarginTop:I

    iget v5, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrowWidth:I

    iget v6, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrowHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/PanoramaView;->addImageResources(Landroid/widget/ImageView;IIIII)V

    .line 310
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressText:Landroid/widget/TextView;

    .line 311
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 314
    .local v8, textParam:Landroid/widget/RelativeLayout$LayoutParams;
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressTextMarginLeft:I

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 315
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressTextMarginTop:I

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 316
    iget v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressTextMarginRight:I

    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressText:Landroid/widget/TextView;

    iget v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 318
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressText:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mDirectionArrows:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectLeftArrow:Landroid/widget/ImageView;

    aput-object v1, v0, v11

    .line 324
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mDirectionArrows:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectUpArrow:Landroid/widget/ImageView;

    aput-object v1, v0, v12

    .line 325
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mDirectionArrows:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectRightArrow:Landroid/widget/ImageView;

    aput-object v1, v0, v9

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mDirectionArrows:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRectDownArrow:Landroid/widget/ImageView;

    aput-object v1, v0, v13

    .line 328
    sget-object v0, Lcom/sec/android/app/camera/PanoramaView;->mArrowResource:Ljava/util/HashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v9, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lcom/sec/android/app/camera/PanoramaView;->mArrowResource:Ljava/util/HashMap;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v9, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lcom/sec/android/app/camera/PanoramaView;->mArrowResource:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v9, [I

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lcom/sec/android/app/camera/PanoramaView;->mArrowResource:Ljava/util/HashMap;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v9, [I

    fill-array-data v2, :array_3

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgressText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaProgress:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    new-instance v0, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;-><init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRect:Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRect:Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 348
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView;->mViewsToHide:Ljava/util/List;

    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaRect:Lcom/sec/android/app/camera/PanoramaView$PanoramaRect;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    return-void

    .line 328
    :array_0
    .array-data 0x4
        0x81t 0x2t 0x2t 0x7ft
        0x82t 0x2t 0x2t 0x7ft
    .end array-data

    .line 331
    :array_1
    .array-data 0x4
        0x85t 0x2t 0x2t 0x7ft
        0x86t 0x2t 0x2t 0x7ft
    .end array-data

    .line 334
    :array_2
    .array-data 0x4
        0x83t 0x2t 0x2t 0x7ft
        0x84t 0x2t 0x2t 0x7ft
    .end array-data

    .line 337
    :array_3
    .array-data 0x4
        0x7ft 0x2t 0x2t 0x7ft
        0x80t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public showPanoramaPostCaptureLayout()V
    .locals 3

    .prologue
    .line 364
    new-instance v1, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;-><init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayout:Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;

    .line 366
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayoutWidth:I

    iget v2, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayoutHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 368
    .local v0, postCaptureParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayoutMarginLeft:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 369
    iget v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayoutMarginTop:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 370
    iget-object v1, p0, Lcom/sec/android/app/camera/PanoramaView;->mPanoramaLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView;->mPostCaptureLayout:Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    return-void
.end method
