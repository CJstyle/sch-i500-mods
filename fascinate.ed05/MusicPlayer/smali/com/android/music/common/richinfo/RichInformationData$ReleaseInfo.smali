.class Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;
.super Ljava/lang/Object;
.source "RichInformationData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/richinfo/RichInformationData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReleaseInfo"
.end annotation


# instance fields
.field label:Ljava/lang/String;

.field media:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationData;


# direct methods
.method constructor <init>(Lcom/android/music/common/richinfo/RichInformationData;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationData$ReleaseInfo;->this$0:Lcom/android/music/common/richinfo/RichInformationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
