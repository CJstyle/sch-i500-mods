.class public Lcom/sec/android/app/camera/AdjustMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "AdjustMenu.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/AdjustMenu$TouchEventConsumer;,
        Lcom/sec/android/app/camera/AdjustMenu$LongTouchEventHandler;,
        Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;,
        Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;,
        Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;
    }
.end annotation


# static fields
.field private static final DELAY:J = 0x64L

.field private static final LONG_PRESSED:I = 0x1

.field private static final SEEK_DELTA:I = 0x2


# instance fields
.field private mContrastSeekBar:Landroid/widget/SeekBar;

.field mContrastSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mContrastTextview:Landroid/widget/TextView;

.field private mContrastValue:I

.field private final mHandler:Landroid/os/Handler;

.field private mLongtouch:Z

.field protected mOnContrastChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;

.field protected mOnSaturationChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;

.field protected mOnSharpnessChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;

.field private mSaturationSeekBar:Landroid/widget/SeekBar;

.field mSaturationSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSaturationTextview:Landroid/widget/TextView;

.field private mSaturationValue:I

.field private mSelectedView:Landroid/view/View;

.field private mSharpnessSeekBar:Landroid/widget/SeekBar;

.field mSharpnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSharpnessTextview:Landroid/widget/TextView;

.field private mSharpnessValue:I

.field private mTempContrastValue:I

.field private mTempSaturationValue:I

.field private mTempSharpnessValue:I

.field private popTextLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V
    .locals 2
    .parameter "camera"
    .parameter "layoutId"
    .parameter "baseViewId"
    .parameter "baseLayout"
    .parameter "menuResourceData"
    .parameter "zOrder"

    .prologue
    const/4 v1, 0x0

    .line 93
    invoke-direct/range {p0 .. p6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/AbstractCameraActivity;IILandroid/view/ViewGroup;Lcom/sec/android/app/camera/MenuResourceData;I)V

    .line 40
    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    .line 41
    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    .line 42
    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    .line 43
    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    .line 44
    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    .line 45
    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    .line 46
    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    .line 47
    iput-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSelectedView:Landroid/view/View;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mLongtouch:Z

    .line 72
    new-instance v0, Lcom/sec/android/app/camera/AdjustMenu$LongTouchEventHandler;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/AdjustMenu$LongTouchEventHandler;-><init>(Lcom/sec/android/app/camera/AdjustMenu;Lcom/sec/android/app/camera/AdjustMenu$1;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mHandler:Landroid/os/Handler;

    .line 166
    new-instance v0, Lcom/sec/android/app/camera/AdjustMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AdjustMenu$1;-><init>(Lcom/sec/android/app/camera/AdjustMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 188
    new-instance v0, Lcom/sec/android/app/camera/AdjustMenu$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AdjustMenu$2;-><init>(Lcom/sec/android/app/camera/AdjustMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 210
    new-instance v0, Lcom/sec/android/app/camera/AdjustMenu$3;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/AdjustMenu$3;-><init>(Lcom/sec/android/app/camera/AdjustMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 95
    invoke-direct {p0}, Lcom/sec/android/app/camera/AdjustMenu;->init()V

    .line 96
    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/AdjustMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/camera/AdjustMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/AdjustMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/camera/AdjustMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/AdjustMenu;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/AdjustMenu;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/SeekBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/AdjustMenu;Landroid/widget/SeekBar;Landroid/widget/TextView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/AdjustMenu;Landroid/widget/SeekBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/AdjustMenu;->updatePopupText(Landroid/widget/SeekBar;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/camera/AdjustMenu;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private init()V
    .locals 7

    .prologue
    const v6, 0x7f0a0012

    const v5, 0x7f0a0011

    const/4 v4, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraContrast()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    .line 101
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSaturation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSharpness()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    .line 108
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0013

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    .line 110
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 115
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0018

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    .line 119
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 120
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v4}, Landroid/widget/SeekBar;->setMax(I)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0017

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a001f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a0021

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 160
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v1, 0x7f0a000f

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/AdjustMenu$TouchEventConsumer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/AdjustMenu$TouchEventConsumer;-><init>(Lcom/sec/android/app/camera/AdjustMenu;Lcom/sec/android/app/camera/AdjustMenu$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 164
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    goto/16 :goto_0
.end method

.method private setSeekBarValue(Landroid/widget/SeekBar;I)V
    .locals 0
    .parameter "seekBar"
    .parameter "value"

    .prologue
    .line 392
    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 393
    return-void
.end method

.method private updatePopupText(Landroid/widget/SeekBar;I)V
    .locals 10
    .parameter "aSeekBar"
    .parameter "mValue"

    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 328
    .local v3, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060015

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    .line 329
    .local v1, leftPadding:I
    iget-object v8, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v8}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f060014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 330
    .local v6, topPadding:I
    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    div-int v4, v8, v9

    .line 331
    .local v4, strips:I
    iget v8, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v9, p2, 0x2

    mul-int/2addr v9, v4

    add-int v0, v8, v9

    .line 332
    .local v0, leftMargin:I
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 333
    .local v5, topMargin:I
    iget-object v8, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 334
    .local v2, lp:Landroid/widget/RelativeLayout$LayoutParams;
    sub-int v8, v0, v1

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 335
    sub-int v8, v5, v6

    iput v8, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 336
    iget-object v8, p0, Lcom/sec/android/app/camera/AdjustMenu;->popTextLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v8, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    const v9, 0x7f0a0023

    invoke-virtual {v8, v9}, Lcom/sec/android/app/camera/AbstractCameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 338
    .local v7, tv:Landroid/widget/TextView;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    return-void
.end method

.method private updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V
    .locals 7
    .parameter "aSeekBar"
    .parameter "tv"
    .parameter "mValue"

    .prologue
    const/4 v6, 0x0

    .line 315
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 316
    .local v1, rp:Landroid/widget/RelativeLayout$LayoutParams;
    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    div-int v2, v4, v5

    .line 317
    .local v2, strips:I
    iget v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/lit8 v5, p3, 0x2

    mul-int/2addr v5, v2

    add-int v0, v4, v5

    .line 318
    .local v0, leftMargin:I
    iget v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 319
    .local v3, topMargin:I
    const/4 v1, 0x0

    .line 320
    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1           #rp:Landroid/widget/RelativeLayout$LayoutParams;
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 321
    .restart local v1       #rp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v0, v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 322
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method


# virtual methods
.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 396
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    .line 401
    :cond_0
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 260
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Lcom/sec/android/app/camera/MenuBase;->onClick(Landroid/view/View;)V

    .line 311
    return-void

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 263
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 267
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 270
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 274
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 275
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 278
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 279
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 282
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBarListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    goto :goto_0

    .line 286
    :pswitch_7
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    if-eq v0, v1, :cond_0

    .line 287
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    .line 288
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnContrastChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnContrastChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;->onContrastChanged(I)V

    .line 292
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    if-eq v0, v1, :cond_1

    .line 293
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSaturationChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSaturationChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;->onSaturationChanged(I)V

    .line 298
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    if-eq v0, v1, :cond_2

    .line 299
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    .line 300
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSharpnessChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSharpnessChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;->onSharpnessChanged(I)V

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 307
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->processBack()V

    goto/16 :goto_0

    .line 260
    :pswitch_data_0
    .packed-switch 0x7f0a0011
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onHide()V
    .locals 2

    .prologue
    .line 359
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    if-eq v0, v1, :cond_0

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeContrastPreview(I)V

    .line 362
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    if-eq v0, v1, :cond_1

    .line 363
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSaturationPreview(I)V

    .line 365
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    if-eq v0, v1, :cond_2

    .line 366
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSharpnessPreview(I)V

    .line 368
    :cond_2
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 369
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 405
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 435
    :goto_0
    return v0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 410
    goto :goto_0

    .line 413
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 414
    goto :goto_0

    .line 417
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 420
    goto :goto_0

    .line 423
    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    .line 424
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempContrastValue:I

    if-eq v0, v1, :cond_6

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeContrastPreview(I)V

    .line 427
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSaturationValue:I

    if-eq v0, v1, :cond_7

    .line 428
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSaturationPreview(I)V

    .line 430
    :cond_7
    iget v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mTempSharpnessValue:I

    if-eq v0, v1, :cond_8

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/AbstractCameraActivity;->changeSharpnessPreview(I)V

    :cond_8
    move v0, v2

    .line 435
    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 439
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_0

    move v0, v2

    .line 457
    :goto_0
    return v0

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getLock()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 444
    goto :goto_0

    .line 447
    :cond_1
    const/16 v0, 0x18

    if-eq p1, v0, :cond_2

    const/16 v0, 0x19

    if-ne p1, v0, :cond_3

    :cond_2
    move v0, v1

    .line 448
    goto :goto_0

    .line 451
    :cond_3
    const/16 v0, 0x1b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x42

    if-ne p1, v0, :cond_5

    :cond_4
    move v0, v1

    .line 454
    goto :goto_0

    :cond_5
    move v0, v2

    .line 457
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 234
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/AdjustMenu;->setLongTouch(Z)V

    .line 235
    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSelectedView:Landroid/view/View;

    .line 236
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 237
    return v3
.end method

.method protected onShow()V
    .locals 0

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/sec/android/app/camera/AdjustMenu;->setSavedAdjust()V

    .line 355
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 356
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 245
    iget-boolean v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mLongtouch:Z

    if-nez v0, :cond_1

    .line 246
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/AdjustMenu;->onClick(Landroid/view/View;)V

    .line 248
    invoke-virtual {p1, v1}, Landroid/view/View;->playSoundEffect(I)V

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 251
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 252
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setLongTouch(Z)V

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method public setLongTouch(Z)V
    .locals 0
    .parameter "longTouch"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mLongtouch:Z

    .line 242
    return-void
.end method

.method public setOnContrastChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 342
    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnContrastChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnContrastChangedListener;

    .line 343
    return-void
.end method

.method public setOnSaturationChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 346
    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSaturationChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSaturationChangedListener;

    .line 347
    return-void
.end method

.method public setOnSharpnessChangedListener(Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 350
    iput-object p1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mOnSharpnessChangedListener:Lcom/sec/android/app/camera/AdjustMenu$OnSharpnessChangedListener;

    .line 351
    return-void
.end method

.method protected setSavedAdjust()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraContrast()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    .line 374
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSaturation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraSharpness()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    .line 381
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 383
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/AdjustMenu;->setSeekBarValue(Landroid/widget/SeekBar;I)V

    .line 385
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessTextview:Landroid/widget/TextView;

    iget v2, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    sub-int/2addr v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/AdjustMenu;->updateProgressTextLayout(Landroid/widget/SeekBar;Landroid/widget/TextView;I)V

    .line 388
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 389
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderContrast()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mContrastValue:I

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSaturation()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSaturationValue:I

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCamcorderSharpness()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/AdjustMenu;->mSharpnessValue:I

    goto :goto_0
.end method
