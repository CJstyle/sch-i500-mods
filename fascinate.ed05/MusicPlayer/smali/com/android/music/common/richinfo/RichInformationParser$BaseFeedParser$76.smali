.class Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$76;
.super Ljava/lang/Object;
.source "RichInformationParser.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->setTrackElemnentListener(Landroid/sax/Element;)V
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
    .line 760
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$76;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 1
    .parameter "body"

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$76;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-static {v0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->access$000(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;

    move-result-object v0

    iput-object p1, v0, Lcom/android/music/common/richinfo/RichInformationData$TrackInfo;->trackId:Ljava/lang/String;

    .line 762
    return-void
.end method
