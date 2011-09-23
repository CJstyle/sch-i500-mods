.class public Lcom/sec/android/app/camera/widget/TwImageButton;
.super Landroid/widget/RelativeLayout;
.source "TwImageButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field protected mButtonText:Landroid/widget/TextView;

.field public mDimmed:Z

.field protected mDimmedBackground:I

.field protected mDimmedImage:I

.field public mDisabled:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mImageButton:Landroid/widget/ImageButton;

.field protected mNormalBackground:I

.field protected mNormalImage:I

.field protected mOnClickListener:Landroid/view/View$OnClickListener;

.field protected mOnTouchListener:Landroid/view/View$OnTouchListener;

.field protected mPopupTextLayout:Landroid/widget/LinearLayout;

.field protected mPressedBackground:I

.field protected mPressedImage:I

.field protected mTextColor:I

.field protected mTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 76
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .parameter "context"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 96
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/high16 v1, 0x4140

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 41
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 57
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 58
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 60
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 100
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .local v0, buttonLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 103
    iput p3, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 104
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .parameter "context"
    .parameter "normalImage"
    .parameter "pressedImage"
    .parameter "dimmedImage"

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 83
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    .line 85
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 86
    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 87
    iput p4, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    .line 89
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;->init(Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/high16 v0, 0x4140

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextSize:F

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mTextColor:I

    .line 57
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 58
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwImageButton;->init(Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method


# virtual methods
.method public SetClickSoundDisabled()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSoundEffect(I)V

    .line 278
    return-void
.end method

.method public SetClickSoundEnabled()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setSoundEffect(I)V

    .line 282
    return-void
.end method

.method protected actionInBounds(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    .line 237
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getWidth()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 243
    :goto_0
    return v0

    .line 240
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_3

    :cond_2
    move v0, v1

    .line 241
    goto :goto_0

    .line 243
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addTextLayout(IIIIII)V
    .locals 3
    .parameter "xAxis"
    .parameter "yAxis"
    .parameter "gravity"
    .parameter "fontSize"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 184
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, p5, p6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 185
    .local v0, rp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, p1, p2, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 186
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setGravity(I)V

    .line 187
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    int-to-float v2, p4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 188
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 136
    :cond_0
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    .line 137
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    .line 139
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 140
    iput-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 141
    return-void
.end method

.method protected createButton()V
    .locals 2

    .prologue
    .line 144
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    .line 145
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    return-void
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getNormalImage()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    return v0
.end method

.method public getPressedImage()I
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    return v0
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/R$styleable;->TwImageButton:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 115
    .local v0, attr:Landroid/content/res/TypedArray;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 116
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 117
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    .line 119
    const/16 v1, 0xf

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    .line 120
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    .line 121
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    .line 123
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->createButton()V

    .line 124
    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/widget/TwImageButton;->addView(Landroid/view/View;)V

    .line 126
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->refreshButtonImage()V

    .line 127
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 128
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-nez v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 274
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "arg0"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 293
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    if-eqz v2, :cond_0

    move v2, v4

    .line 336
    :goto_0
    return v2

    .line 297
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v2, :cond_1

    move v2, v4

    .line 298
    goto :goto_0

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_2

    .line 302
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->actionInBounds(II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 303
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 304
    .local v1, res:Z
    if-nez v1, :cond_2

    move v2, v1

    .line 305
    goto :goto_0

    .line 309
    .end local v1           #res:Z
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_3
    :goto_1
    :pswitch_0
    move v2, v5

    .line 336
    goto :goto_0

    .line 311
    :pswitch_1
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 312
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 313
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/widget/TwImageButton;->showToolTip(Z)V

    goto :goto_1

    .line 316
    :pswitch_2
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 317
    iget v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 318
    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/widget/TwImageButton;->showToolTip(Z)V

    .line 320
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/sec/android/app/camera/widget/TwImageButton;->actionInBounds(II)Z

    move-result v2

    if-nez v2, :cond_3

    .line 322
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_3

    .line 323
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 324
    .local v0, ev:Landroid/view/MotionEvent;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 325
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, v0}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 330
    .end local v0           #ev:Landroid/view/MotionEvent;
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_3

    .line 331
    iget-object v2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p2}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public refreshButtonImage()V
    .locals 2

    .prologue
    .line 253
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 254
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 261
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v0, :cond_2

    .line 262
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 266
    :goto_1
    return-void

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    iget v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_0

    .line 264
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public registerPopupTextLayout(Landroid/widget/LinearLayout;)V
    .locals 1
    .parameter "layout"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPopupTextLayout:Landroid/widget/LinearLayout;

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->showToolTip(Z)V

    .line 110
    return-void
.end method

.method public setBackgroundResources(III)V
    .locals 0
    .parameter "normalBackground"
    .parameter "pressedBackground"
    .parameter "dimmedBackground"

    .prologue
    .line 225
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    .line 226
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    .line 227
    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    .line 228
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "img"

    .prologue
    .line 353
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 354
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 357
    :cond_0
    return-void
.end method

.method protected setButtonImage(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 349
    :cond_0
    return-void
.end method

.method public setDimmed(Z)V
    .locals 1
    .parameter "dimmed"

    .prologue
    .line 152
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    .line 153
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmed:Z

    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    .line 155
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 156
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    if-eqz v0, :cond_0

    .line 157
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundEnabled()V

    .line 161
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 162
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    if-eqz v0, :cond_0

    .line 163
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public setDimmedBackground(I)V
    .locals 0
    .parameter "dimmedBackground"

    .prologue
    .line 221
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedBackground:I

    .line 222
    return-void
.end method

.method public setDimmedImage(I)V
    .locals 0
    .parameter "dimmedImage"

    .prologue
    .line 209
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    .line 210
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1
    .parameter "disabled"

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    .line 170
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDisabled:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundDisabled()V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwImageButton;->SetClickSoundEnabled()V

    goto :goto_0
.end method

.method public setImageResources(III)V
    .locals 0
    .parameter "normalImage"
    .parameter "pressedImage"
    .parameter "dimmedImage"

    .prologue
    .line 231
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 232
    iput p2, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 233
    iput p3, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mDimmedImage:I

    .line 234
    return-void
.end method

.method public setNormalBackground(I)V
    .locals 0
    .parameter "normalBackground"

    .prologue
    .line 213
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalBackground:I

    .line 214
    return-void
.end method

.method public setNormalImage(I)V
    .locals 0
    .parameter "normalImage"

    .prologue
    .line 201
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mNormalImage:I

    .line 202
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 286
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 290
    return-void
.end method

.method public setPressed()V
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setButtonImage(I)V

    .line 248
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    if-eqz v0, :cond_0

    .line 249
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwImageButton;->setBackgroundResource(I)V

    .line 250
    :cond_0
    return-void
.end method

.method public setPressedBackground(I)V
    .locals 0
    .parameter "pressedBackground"

    .prologue
    .line 217
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedBackground:I

    .line 218
    return-void
.end method

.method public setPressedImage(I)V
    .locals 0
    .parameter "pressedImage"

    .prologue
    .line 205
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPressedImage:I

    .line 206
    return-void
.end method

.method public setSoundEffectsEnabled(Z)V
    .locals 1
    .parameter "soundEffectsEnabled"

    .prologue
    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mImageButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setSoundEffectsEnabled(Z)V

    .line 373
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setSoundEffectsEnabled(Z)V

    .line 374
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mButtonText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    :cond_0
    return-void
.end method

.method protected showToolTip(Z)V
    .locals 2
    .parameter "bShow"

    .prologue
    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPopupTextLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwImageButton;->mPopupTextLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    :cond_0
    return-void

    .line 341
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method
