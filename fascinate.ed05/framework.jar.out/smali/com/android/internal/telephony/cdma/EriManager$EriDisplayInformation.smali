.class Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/EriManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EriDisplayInformation"
.end annotation


# instance fields
.field public mEriBannerStyle:I

.field public mEriCallGuardStatus:I

.field public mEriDataCallGuardStatus:I

.field public mEriIconIndex:I

.field public mEriIconMode:I

.field public mEriIconText:Ljava/lang/String;

.field public mEriRinger:I

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/EriManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter "eriIconIndex"
    .parameter "eriIconMode"
    .parameter "eriIconText"

    .prologue
    const/4 v0, 0x0

    .line 78
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->this$0:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    .line 80
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    .line 81
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    .line 84
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriBannerStyle:I

    .line 85
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriCallGuardStatus:I

    .line 86
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriRinger:I

    .line 87
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriDataCallGuardStatus:I

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter "eriIconIndex"
    .parameter "eriIconMode"
    .parameter "eriIconText"
    .parameter "eriBannerStyle"
    .parameter "eriCallGuardStatus"
    .parameter "eriRinger"
    .parameter "eriDataCallGuardStatus"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->this$0:Lcom/android/internal/telephony/cdma/EriManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    .line 102
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    .line 103
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    .line 106
    iput p5, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriBannerStyle:I

    .line 107
    iput p6, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriCallGuardStatus:I

    .line 108
    iput p7, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriRinger:I

    .line 109
    iput p8, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriDataCallGuardStatus:I

    .line 110
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EriDisplayInformation: { IconIndex: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " EriIconMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " EriIconText: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " EriBannerStyle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriBannerStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " EriCallGuardStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriCallGuardStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " EriRinger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriRinger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " EriDataCallGuardStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriDataCallGuardStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
