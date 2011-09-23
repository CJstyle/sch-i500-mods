.class Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$SendMessageTask;
.super Ljava/util/TimerTask;
.source "CallLogCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMessageTask"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private number:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "num"

    .prologue
    const/4 v0, 0x0

    .line 1051
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$SendMessageTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    .line 1052
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1048
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$SendMessageTask;->number:Ljava/lang/String;

    .line 1049
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$SendMessageTask;->mContext:Landroid/content/Context;

    .line 1053
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$SendMessageTask;->mContext:Landroid/content/Context;

    .line 1054
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$SendMessageTask;->number:Ljava/lang/String;

    .line 1055
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1061
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$SendMessageTask;->number:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1062
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1063
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$SendMessageTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1064
    return-void
.end method
