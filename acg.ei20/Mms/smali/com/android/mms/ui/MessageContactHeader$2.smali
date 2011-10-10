.class Lcom/android/mms/ui/MessageContactHeader$2;
.super Ljava/lang/Object;
.source "MessageContactHeader.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/MessageContactHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/MessageContactHeader;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/MessageContactHeader;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/mms/ui/MessageContactHeader$2;->this$0:Lcom/android/mms/ui/MessageContactHeader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/mms/ui/MessageContactHeader$2;->this$0:Lcom/android/mms/ui/MessageContactHeader;

    invoke-static {v0}, Lcom/android/mms/ui/MessageContactHeader;->access$000(Lcom/android/mms/ui/MessageContactHeader;)Landroid/widget/QuickContactBadge;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/QuickContactBadge;->performClick()Z

    .line 99
    return-void
.end method
