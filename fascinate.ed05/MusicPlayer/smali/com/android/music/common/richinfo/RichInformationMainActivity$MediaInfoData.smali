.class Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;
.super Ljava/lang/Object;
.source "RichInformationMainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/richinfo/RichInformationMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaInfoData"
.end annotation


# instance fields
.field protected context:Ljava/lang/String;

.field protected textId:I

.field final synthetic this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

.field protected title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/music/common/richinfo/RichInformationMainActivity;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 900
    iput-object p1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->this$0:Lcom/android/music/common/richinfo/RichInformationMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 901
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->textId:I

    .line 902
    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->title:Ljava/lang/String;

    .line 903
    iput-object v1, p0, Lcom/android/music/common/richinfo/RichInformationMainActivity$MediaInfoData;->context:Ljava/lang/String;

    .line 904
    return-void
.end method
