.class Lcom/android/phone/FakeCall$2;
.super Ljava/lang/Object;
.source "FakeCall.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/FakeCall;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/FakeCall;


# direct methods
.method constructor <init>(Lcom/android/phone/FakeCall;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/phone/FakeCall$2;->this$0:Lcom/android/phone/FakeCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/phone/FakeCall$2;->this$0:Lcom/android/phone/FakeCall;

    #getter for: Lcom/android/phone/FakeCall;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v0}, Lcom/android/phone/FakeCall;->access$100(Lcom/android/phone/FakeCall;)Landroid/app/AlarmManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/FakeCall$2;->this$0:Lcom/android/phone/FakeCall;

    #getter for: Lcom/android/phone/FakeCall;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Lcom/android/phone/FakeCall;->access$000(Lcom/android/phone/FakeCall;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 57
    iget-object v0, p0, Lcom/android/phone/FakeCall$2;->this$0:Lcom/android/phone/FakeCall;

    invoke-virtual {v0}, Lcom/android/phone/FakeCall;->finish()V

    .line 58
    return-void
.end method
