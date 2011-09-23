.class public Lcom/sec/android/app/cradle/AnalogClockView;
.super Landroid/view/View;
.source "AnalogClockView.java"


# instance fields
.field private attached:Z

.field private context:Landroid/content/Context;

.field private handl:Landroid/os/Handler;

.field private hour:F

.field private hourImg:Landroid/graphics/drawable/Drawable;

.field private mCalendar:Landroid/text/format/Time;

.field private min:F

.field private minuteImg:Landroid/graphics/drawable/Drawable;

.field private sec:F

.field public service:Landroid/content/BroadcastReceiver;

.field private widthPixel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const-wide/high16 v8, 0x4074

    const-wide/high16 v6, 0x3fe0

    const/4 v2, 0x0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->hour:F

    iput v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->min:F

    iput v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->sec:F

    .line 22
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->attached:Z

    .line 23
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->handl:Landroid/os/Handler;

    .line 103
    new-instance v2, Lcom/sec/android/app/cradle/AnalogClockView$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/cradle/AnalogClockView$1;-><init>(Lcom/sec/android/app/cradle/AnalogClockView;)V

    iput-object v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->service:Landroid/content/BroadcastReceiver;

    .line 30
    iput-object p1, p0, Lcom/sec/android/app/cradle/AnalogClockView;->context:Landroid/content/Context;

    .line 31
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->mCalendar:Landroid/text/format/Time;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->hourImg:Landroid/graphics/drawable/Drawable;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->minuteImg:Landroid/graphics/drawable/Drawable;

    .line 34
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/AnalogClockView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->widthPixel:I

    .line 38
    :goto_0
    const/16 v2, 0x15e

    iput v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->widthPixel:I

    .line 40
    iget v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->widthPixel:I

    int-to-double v2, v2

    const-wide v4, 0x4068a9999999999aL

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-int v1, v2

    .line 41
    .local v1, mWidthPixel:I
    iget v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->widthPixel:I

    int-to-double v2, v2

    const-wide v4, 0x406829999999999aL

    mul-double/2addr v2, v4

    div-double/2addr v2, v8

    add-double/2addr v2, v6

    double-to-int v0, v2

    .line 42
    .local v0, mHeightPixel:I
    iget v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->widthPixel:I

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/AnalogClockView;->setMinimumWidth(I)V

    .line 43
    const/16 v2, 0x140

    invoke-virtual {p0, v2}, Lcom/sec/android/app/cradle/AnalogClockView;->setMinimumHeight(I)V

    .line 44
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/AnalogClockView;->onTimeChanged()V

    .line 45
    return-void

    .line 37
    .end local v0           #mHeightPixel:I
    .end local v1           #mWidthPixel:I
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->widthPixel:I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/sec/android/app/cradle/AnalogClockView;Landroid/text/format/Time;)Landroid/text/format/Time;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/sec/android/app/cradle/AnalogClockView;->mCalendar:Landroid/text/format/Time;

    return-object p1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 84
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 85
    iget-boolean v1, p0, Lcom/sec/android/app/cradle/AnalogClockView;->attached:Z

    if-nez v1, :cond_0

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/cradle/AnalogClockView;->attached:Z

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/sec/android/app/cradle/AnalogClockView;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/cradle/AnalogClockView;->service:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/android/app/cradle/AnalogClockView;->handl:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 93
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 97
    iget-boolean v0, p0, Lcom/sec/android/app/cradle/AnalogClockView;->attached:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/cradle/AnalogClockView;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/app/cradle/AnalogClockView;->service:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/cradle/AnalogClockView;->attached:Z

    .line 101
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x43b4

    const/high16 v9, 0x4270

    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/AnalogClockView;->getWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    .line 52
    .local v3, w:I
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/AnalogClockView;->getHeight()I

    move-result v6

    div-int/lit8 v0, v6, 0x2

    .line 53
    .local v0, h:I
    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    iget v6, p0, Lcom/sec/android/app/cradle/AnalogClockView;->hour:F

    iget v7, p0, Lcom/sec/android/app/cradle/AnalogClockView;->min:F

    div-float/2addr v7, v9

    add-float v1, v6, v7

    .line 56
    .local v1, mHour:F
    iget v6, p0, Lcom/sec/android/app/cradle/AnalogClockView;->min:F

    iget v7, p0, Lcom/sec/android/app/cradle/AnalogClockView;->sec:F

    div-float/2addr v7, v9

    add-float v2, v6, v7

    .line 57
    .local v2, mMinute:F
    iget-object v6, p0, Lcom/sec/android/app/cradle/AnalogClockView;->hourImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 58
    .local v4, x:I
    iget-object v6, p0, Lcom/sec/android/app/cradle/AnalogClockView;->hourImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 59
    .local v5, y:I
    iget-object v6, p0, Lcom/sec/android/app/cradle/AnalogClockView;->hourImg:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v7, v4, 0x2

    sub-int v7, v3, v7

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v11, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 61
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 62
    const/high16 v6, 0x4140

    div-float v6, v1, v6

    mul-float/2addr v6, v10

    int-to-float v7, v3

    int-to-float v8, v0

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 63
    iget-object v6, p0, Lcom/sec/android/app/cradle/AnalogClockView;->hourImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 67
    iget-object v6, p0, Lcom/sec/android/app/cradle/AnalogClockView;->minuteImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 68
    iget-object v6, p0, Lcom/sec/android/app/cradle/AnalogClockView;->minuteImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 69
    iget-object v6, p0, Lcom/sec/android/app/cradle/AnalogClockView;->minuteImg:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v7, v4, 0x2

    sub-int v7, v3, v7

    div-int/lit8 v8, v4, 0x2

    add-int/2addr v8, v3

    invoke-virtual {v6, v7, v11, v8, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 70
    div-float v6, v2, v9

    mul-float/2addr v6, v10

    int-to-float v7, v3

    int-to-float v8, v0

    invoke-virtual {p1, v6, v7, v8}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 71
    iget-object v6, p0, Lcom/sec/android/app/cradle/AnalogClockView;->minuteImg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/cradle/AnalogClockView;->mCalendar:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 77
    iget-object v0, p0, Lcom/sec/android/app/cradle/AnalogClockView;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->hour:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/cradle/AnalogClockView;->hour:F

    .line 78
    iget-object v0, p0, Lcom/sec/android/app/cradle/AnalogClockView;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->minute:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/cradle/AnalogClockView;->min:F

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/cradle/AnalogClockView;->mCalendar:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    int-to-float v0, v0

    iput v0, p0, Lcom/sec/android/app/cradle/AnalogClockView;->sec:F

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/cradle/AnalogClockView;->invalidate()V

    .line 81
    return-void
.end method
