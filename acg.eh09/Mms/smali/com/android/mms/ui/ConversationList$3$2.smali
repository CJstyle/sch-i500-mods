.class Lcom/android/mms/ui/ConversationList$3$2;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$3;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$3;)V
    .locals 0
    .parameter

    .prologue
    .line 322
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$3$2;->this$1:Lcom/android/mms/ui/ConversationList$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 324
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$3$2;->this$1:Lcom/android/mms/ui/ConversationList$3;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 325
    .local v1, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList$3$2;->this$1:Lcom/android/mms/ui/ConversationList$3;

    iget-object v2, v2, Lcom/android/mms/ui/ConversationList$3;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->access$300(Lcom/android/mms/ui/ConversationList;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "csc_pref_key_auto_delete"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 326
    .local v0, defaultValue:Z
    const-string v2, "pref_key_auto_delete"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 327
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 328
    return-void
.end method