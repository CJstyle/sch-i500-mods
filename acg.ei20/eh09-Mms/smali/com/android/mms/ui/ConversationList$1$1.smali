.class Lcom/android/mms/ui/ConversationList$1$1;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ConversationList$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/ConversationList$1;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList$1;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$1$1;->this$1:Lcom/android/mms/ui/ConversationList$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$1$1;->this$1:Lcom/android/mms/ui/ConversationList$1;

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList$1;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$000(Lcom/android/mms/ui/ConversationList;)V

    .line 163
    return-void
.end method