.class final Lcom/android/mms/ui/ConversationListDel$2;
.super Ljava/lang/Object;
.source "ConversationListDel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationListDel;->updateDeletable(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$resolver:Landroid/content/ContentResolver;

.field final synthetic val$values:Landroid/content/ContentValues;

.field final synthetic val$whereDeletable:Ljava/lang/String;

.field final synthetic val$whereThreadId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/ContentResolver;Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/mms/ui/ConversationListDel$2;->val$resolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/mms/ui/ConversationListDel$2;->val$values:Landroid/content/ContentValues;

    iput-object p3, p0, Lcom/android/mms/ui/ConversationListDel$2;->val$whereDeletable:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/mms/ui/ConversationListDel$2;->val$whereThreadId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/mms/ui/ConversationListDel$2;->val$resolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationListDel$2;->val$values:Landroid/content/ContentValues;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListDel$2;->val$whereDeletable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationListDel$2;->val$whereThreadId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, updated:I
    const-string v1, "Mms/ConversationListDel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "done query updateDeletable(MMS),updated rows:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method
