.class Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduBodyCache"
.end annotation


# static fields
.field private static mLastPduBody:Lcom/google/android/mms/pdu/PduBody;

.field private static mLastUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2029
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 3
    .parameter "context"
    .parameter "contentUri"

    .prologue
    .line 2034
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;->mLastUri:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2035
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;->mLastPduBody:Lcom/google/android/mms/pdu/PduBody;

    .line 2044
    :goto_0
    return-object v1

    .line 2038
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    sput-object v1, Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;->mLastPduBody:Lcom/google/android/mms/pdu/PduBody;

    .line 2039
    sput-object p1, Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;->mLastUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2044
    sget-object v1, Lcom/android/mms/ui/ComposeMessageActivity$PduBodyCache;->mLastPduBody:Lcom/google/android/mms/pdu/PduBody;

    goto :goto_0

    .line 2040
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2041
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/compose"

    invoke-virtual {v0}, Lcom/google/android/mms/MmsException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2042
    const/4 v1, 0x0

    goto :goto_0
.end method
