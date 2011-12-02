.class Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$28;
.super Ljava/lang/Object;
.source "RichInformationParser.java"

# interfaces
.implements Landroid/sax/StartElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->parse()Lcom/android/music/common/richinfo/RichInformationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;


# direct methods
.method constructor <init>(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)V
    .locals 0
    .parameter

    .prologue
    .line 389
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$28;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/xml/sax/Attributes;)V
    .locals 3
    .parameter "attributes"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$28;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    new-instance v1, Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    iget-object v2, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$28;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    iget-object v2, v2, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->this$0:Lcom/android/music/common/richinfo/RichInformationParser;

    invoke-static {v2}, Lcom/android/music/common/richinfo/RichInformationParser;->access$100(Lcom/android/music/common/richinfo/RichInformationParser;)Lcom/android/music/common/richinfo/RichInformationData;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;-><init>(Lcom/android/music/common/richinfo/RichInformationData;)V

    invoke-static {v0, v1}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->access$002(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;)Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    .line 391
    return-void
.end method
