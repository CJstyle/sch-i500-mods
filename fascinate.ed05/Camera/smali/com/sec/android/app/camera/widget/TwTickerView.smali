.class public Lcom/sec/android/app/camera/widget/TwTickerView;
.super Landroid/widget/TextView;
.source "TwTickerView.java"


# static fields
.field public static final DEFAULT_FONT_SIZE:I = 0x12

.field public static final DELAY:I = 0x190

.field public static final START_TICKER:I = 0x0

.field public static final STOP_TICKER:I = 0x1


# instance fields
.field private mIndex:I

.field private mMessagesInHandler:Z

.field private mText:Ljava/lang/String;

.field private mTextLength:I

.field private mTickerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    .line 38
    new-instance v0, Lcom/sec/android/app/camera/widget/TwTickerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTickerView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTickerHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    .line 38
    new-instance v0, Lcom/sec/android/app/camera/widget/TwTickerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTickerView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTickerHandler:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    .line 38
    new-instance v0, Lcom/sec/android/app/camera/widget/TwTickerView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwTickerView$1;-><init>(Lcom/sec/android/app/camera/widget/TwTickerView;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTickerHandler:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/TwTickerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/widget/TwTickerView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput p1, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    return p1
.end method

.method static synthetic access$008(Lcom/sec/android/app/camera/widget/TwTickerView;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/widget/TwTickerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTextLength:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/widget/TwTickerView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/camera/widget/TwTickerView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    return p1
.end method


# virtual methods
.method public clearText()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTickerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 98
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    .line 100
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwTickerView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    return-void
.end method

.method public startTicker(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTickerView;->stopTicker()V

    .line 73
    const/high16 v0, 0x4190

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/camera/widget/TwTickerView;->startTicker(Ljava/lang/String;F)V

    .line 74
    return-void
.end method

.method public startTicker(Ljava/lang/String;F)V
    .locals 4
    .parameter "text"
    .parameter "fontSize"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    .line 76
    iput-object p1, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mText:Ljava/lang/String;

    .line 77
    invoke-virtual {p0, p2}, Lcom/sec/android/app/camera/widget/TwTickerView;->setTextSize(F)V

    .line 78
    const/high16 v0, 0x4000

    const/high16 v1, -0x100

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/sec/android/app/camera/widget/TwTickerView;->setShadowLayer(FFFI)V

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwTickerView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTickerView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwTickerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 81
    iput v3, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mIndex:I

    .line 82
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTextLength:I

    .line 83
    iput-boolean v3, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    .line 84
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTickerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 86
    :cond_0
    return-void
.end method

.method public stopTicker()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 89
    iget-boolean v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mTickerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 91
    iput-boolean v1, p0, Lcom/sec/android/app/camera/widget/TwTickerView;->mMessagesInHandler:Z

    .line 93
    :cond_0
    return-void
.end method
