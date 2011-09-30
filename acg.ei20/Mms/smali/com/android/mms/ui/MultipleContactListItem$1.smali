.class Lcom/android/mms/ui/MultipleContactListItem$1;
.super Ljava/lang/Object;
.source "MultipleContactListItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/MultipleContactListItem;->onUpdate(Lcom/android/mms/data/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MultipleContactListItem;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MultipleContactListItem;)V
    .locals 0
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/mms/ui/MultipleContactListItem$1;->this$0:Lcom/android/mms/ui/MultipleContactListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/mms/ui/MultipleContactListItem$1;->this$0:Lcom/android/mms/ui/MultipleContactListItem;

    invoke-virtual {v0}, Lcom/android/mms/ui/MultipleContactListItem;->updateView()V

    .line 105
    return-void
.end method
