.class public Lcom/android/mms/ui/ComposeMessageActivity$SendThreadListener;
.super Ljava/lang/Object;
.source "ComposeMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/ui/ComposeMessageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SendThreadListener"
.end annotation


# instance fields
.field private mThis:Lcom/android/mms/ui/ComposeMessageActivity;


# direct methods
.method public constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 0
    .parameter "mComposeMessageActivity"

    .prologue
    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 939
    iput-object p1, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendThreadListener;->mThis:Lcom/android/mms/ui/ComposeMessageActivity;

    .line 940
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 942
    iget-object v0, p0, Lcom/android/mms/ui/ComposeMessageActivity$SendThreadListener;->mThis:Lcom/android/mms/ui/ComposeMessageActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->access$2200(Lcom/android/mms/ui/ComposeMessageActivity;Z)V

    .line 943
    return-void
.end method
