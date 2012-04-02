.class Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;
.super Ljava/lang/Object;
.source "VideoSubTitleUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SubTitleItem"
.end annotation


# instance fields
.field private mCheckBoxEnable:Z

.field private mSettingItem:Ljava/lang/String;

.field private mSettingValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "checkBox"
    .parameter "item"
    .parameter "value"

    .prologue
    .line 855
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->this$0:Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    iput-object p3, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->mSettingItem:Ljava/lang/String;

    .line 857
    iput-object p4, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->mSettingValue:Ljava/lang/String;

    .line 858
    iput-boolean p2, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->mCheckBoxEnable:Z

    .line 859
    return-void
.end method


# virtual methods
.method public getCheckBoxState()Z
    .locals 1

    .prologue
    .line 872
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->mCheckBoxEnable:Z

    return v0
.end method

.method public getItem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->mSettingItem:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoSubTitleUtil$SubTitleItem;->mSettingValue:Ljava/lang/String;

    return-object v0
.end method
