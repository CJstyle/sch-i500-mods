.class Lcom/android/mms/ui/ClassZeroActivity$3;
.super Ljava/lang/Object;
.source "ClassZeroActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ClassZeroActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassZeroActivity;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->access$002(Lcom/android/mms/ui/ClassZeroActivity;Z)Z

    .line 231
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-static {v0}, Lcom/android/mms/ui/ClassZeroActivity;->access$200(Lcom/android/mms/ui/ClassZeroActivity;)V

    .line 232
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity$3;->this$0:Lcom/android/mms/ui/ClassZeroActivity;

    invoke-virtual {v0}, Lcom/android/mms/ui/ClassZeroActivity;->finish()V

    .line 233
    return-void
.end method
