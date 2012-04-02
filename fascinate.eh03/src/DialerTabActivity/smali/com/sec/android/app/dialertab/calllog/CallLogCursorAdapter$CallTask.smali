.class Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$CallTask;
.super Ljava/util/TimerTask;
.source "CallLogCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CallTask"
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

    .line 1031
    iput-object p1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$CallTask;->this$0:Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter;

    .line 1032
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 1028
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$CallTask;->number:Ljava/lang/String;

    .line 1029
    iput-object v0, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$CallTask;->mContext:Landroid/content/Context;

    .line 1033
    iput-object p2, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$CallTask;->mContext:Landroid/content/Context;

    .line 1034
    iput-object p3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$CallTask;->number:Ljava/lang/String;

    .line 1035
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1041
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$CallTask;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1042
    .local v0, callIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1043
    iget-object v1, p0, Lcom/sec/android/app/dialertab/calllog/CallLogCursorAdapter$CallTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1044
    return-void
.end method
