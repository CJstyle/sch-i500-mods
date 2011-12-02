.class Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$70;
.super Ljava/lang/Object;
.source "RichInformationParser.java"

# interfaces
.implements Landroid/sax/EndTextElementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->setAlbumElementListener(Landroid/sax/Element;)V
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
    .line 712
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$70;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Ljava/lang/String;)V
    .locals 2
    .parameter "body"

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser$70;->this$1:Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;

    invoke-static {v0}, Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;->access$200(Lcom/android/music/common/richinfo/RichInformationParser$BaseFeedParser;)Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/android/music/common/richinfo/RichInformationData$AlbumInfo;->isPick:Z

    .line 715
    return-void

    .line 713
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
