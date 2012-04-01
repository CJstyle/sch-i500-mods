.class Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;
.super Ljava/lang/Object;
.source "DialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/dialertab/dialer/DialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactItem"
.end annotation


# instance fields
.field private id:I

.field private mNumber:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

.field private type:I


# direct methods
.method public constructor <init>(Lcom/sec/android/app/dialertab/dialer/DialerActivity;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter "id"
    .parameter "name"
    .parameter "number"
    .parameter "type"

    .prologue
    .line 3757
    iput-object p1, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->this$0:Lcom/sec/android/app/dialertab/dialer/DialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3758
    iput p2, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->id:I

    .line 3759
    iput-object p3, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->name:Ljava/lang/String;

    .line 3760
    invoke-static {p4}, Lcom/sec/android/app/dialertab/dialer/DialerActivity;->access$1900(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->mNumber:Ljava/lang/String;

    .line 3761
    iput p5, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->type:I

    .line 3762
    return-void
.end method


# virtual methods
.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3769
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3773
    iget-object v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoID()I
    .locals 1

    .prologue
    .line 3765
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->id:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 3776
    iget v0, p0, Lcom/sec/android/app/dialertab/dialer/DialerActivity$ContactItem;->type:I

    return v0
.end method
