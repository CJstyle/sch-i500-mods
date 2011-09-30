.class Lcom/android/music/list/data/MpImageDataBuffer$MpItem;
.super Ljava/lang/Object;
.source "MpImageDataBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/data/MpImageDataBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MpItem"
.end annotation


# instance fields
.field Path:Ljava/lang/String;

.field Tag:Ljava/lang/String;

.field dbid:Ljava/lang/String;

.field numberID:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/list/data/MpImageDataBuffer;


# direct methods
.method constructor <init>(Lcom/android/music/list/data/MpImageDataBuffer;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/music/list/data/MpImageDataBuffer$MpItem;->this$0:Lcom/android/music/list/data/MpImageDataBuffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
