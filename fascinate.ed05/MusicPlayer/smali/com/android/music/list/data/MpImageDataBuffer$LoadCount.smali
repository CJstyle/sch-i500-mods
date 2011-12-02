.class Lcom/android/music/list/data/MpImageDataBuffer$LoadCount;
.super Ljava/lang/Object;
.source "MpImageDataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/data/MpImageDataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadCount"
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/android/music/list/data/MpImageDataBuffer;


# direct methods
.method public constructor <init>(Lcom/android/music/list/data/MpImageDataBuffer;)V
    .locals 1
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/music/list/data/MpImageDataBuffer$LoadCount;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/list/data/MpImageDataBuffer$LoadCount;->count:I

    .line 528
    return-void
.end method


# virtual methods
.method public Get()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Lcom/android/music/list/data/MpImageDataBuffer$LoadCount;->count:I

    return v0
.end method

.method public decrement()V
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/android/music/list/data/MpImageDataBuffer$LoadCount;->count:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/music/list/data/MpImageDataBuffer$LoadCount;->count:I

    .line 520
    return-void
.end method

.method public increment()V
    .locals 1

    .prologue
    .line 515
    iget v0, p0, Lcom/android/music/list/data/MpImageDataBuffer$LoadCount;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/music/list/data/MpImageDataBuffer$LoadCount;->count:I

    .line 516
    return-void
.end method
