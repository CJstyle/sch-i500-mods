.class Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$2;
.super Ljava/lang/Object;
.source "FrequentGridDeleteActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;


# direct methods
.method constructor <init>(Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity$2;->this$0:Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;

    invoke-virtual {v0}, Lcom/sec/android/app/dialertab/frequent/FrequentGridDeleteActivity;->onResume()V

    .line 161
    return-void
.end method
