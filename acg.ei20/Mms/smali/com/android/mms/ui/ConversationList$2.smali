.class Lcom/android/mms/ui/ConversationList$2;
.super Ljava/lang/Object;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ConversationList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ConversationList;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lcom/android/mms/ui/ConversationListAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 289
    const-string v0, "Mms/ConversationList"

    const-string v1, "ConversationList: onContentChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList$2;->this$0:Lcom/android/mms/ui/ConversationList;

    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->access$200(Lcom/android/mms/ui/ConversationList;)V

    .line 291
    return-void
.end method
