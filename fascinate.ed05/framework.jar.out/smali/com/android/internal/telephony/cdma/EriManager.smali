.class public final Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field public static final ERI_FROM_MODEM:I = 0x2

.field public static final ERI_FROM_XML:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final VDBG:Z


# instance fields
.field private isEriFileLoaded:Z

.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Landroid/content/Context;I)V
    .locals 1
    .parameter "phone"
    .parameter "context"
    .parameter "eriFileSource"

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 147
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 148
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 149
    iput p3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 150
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 151
    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .locals 11
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 558
    packed-switch p1, :pswitch_data_0

    .line 714
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    if-nez v1, :cond_1

    .line 716
    const-string v1, "CDMA"

    const-string v2, "ERI File not loaded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v1, 0x2

    if-le p2, v1, :cond_0

    .line 719
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040101

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 821
    .local v0, ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :goto_0
    return-object v0

    .line 562
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_0
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x104017e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .line 565
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    .line 568
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x10400ff

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 576
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    .line 579
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040100

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 587
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    .line 590
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040101

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 598
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    .line 603
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_4
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040102

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 611
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto :goto_0

    .line 614
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_5
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040103

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 622
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 625
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_6
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040104

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 633
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 636
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_7
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040105

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 644
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 647
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_8
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040106

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 655
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 658
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_9
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040107

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 666
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 669
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_a
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040108

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 677
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 680
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_b
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x1040109

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 688
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 691
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_c
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x104010a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 699
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 702
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_d
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v2, 0x104010b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 710
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 730
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_0
    packed-switch p2, :pswitch_data_1

    .line 768
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const-string v3, "ERI text"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 732
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_e
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x10400ff

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 741
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 744
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_f
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040100

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 753
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 756
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :pswitch_10
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x1040101

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .line 765
    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 773
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v10

    .line 774
    .local v10, eriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v9

    .line 775
    .local v9, defEriInfo:Lcom/android/internal/telephony/cdma/EriInfo;
    if-nez v10, :cond_3

    .line 780
    if-nez v9, :cond_2

    .line 781
    const-string v1, "CDMA"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERI defRoamInd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found in ERI file ...on"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v4, 0x10400ff

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 797
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v2, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v3, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v4, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    iget v5, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mBannerStyle:I

    iget v6, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mCallGuardStatus:I

    iget v7, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mRinger:I

    iget v8, v9, Lcom/android/internal/telephony/cdma/EriInfo;->mDataCallGuardStatus:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 808
    .end local v0           #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    :cond_3
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v2, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mIconIndex:I

    iget v3, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mIconMode:I

    iget-object v4, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mEriText:Ljava/lang/String;

    iget v5, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mBannerStyle:I

    iget v6, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mCallGuardStatus:I

    iget v7, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mRinger:I

    iget v8, v10, Lcom/android/internal/telephony/cdma/EriInfo;->mDataCallGuardStatus:I

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;IIII)V

    .restart local v0       #ret:Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    goto/16 :goto_0

    .line 558
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 730
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .locals 2
    .parameter "roamingIndicator"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/cdma/EriInfo;

    move-object v0, p0

    .line 351
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadEriFileFromFileSystem()V
    .locals 0

    .prologue
    .line 194
    return-void
.end method

.method private loadEriFileFromModem()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method private loadEriFileFromXml()V
    .locals 21

    .prologue
    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    .line 228
    .local v19, r:Landroid/content/res/Resources;
    const v3, 0x10b0004

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v18

    .line 230
    .local v18, parser:Landroid/content/res/XmlResourceParser;
    :try_start_0
    const-string v3, "EriFile"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "VersionNumber"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "NumberOfEriEntries"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    const/4 v4, 0x0

    const-string v5, "EriFileType"

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    .line 238
    const/16 v17, 0x0

    .line 240
    .local v17, parsedEriEntries:I
    :cond_0
    :goto_0
    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 241
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v16

    .line 242
    .local v16, name:Ljava/lang/String;
    if-nez v16, :cond_2

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    move/from16 v0, v17

    move v1, v3

    if-eq v0, v1, :cond_1

    .line 244
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Parsing ERI file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v5, v0

    iget v5, v5, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " defined, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " parsed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1
    const-string v3, "CDMA"

    const-string v4, "loadEriFileFromXml: eri parsing successful, file loaded"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #parsedEriEntries:I
    :goto_1
    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    .line 309
    return-void

    .line 247
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #parsedEriEntries:I
    :cond_2
    :try_start_1
    const-string v3, "CallPromptId"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 248
    const/4 v3, 0x0

    const-string v4, "Id"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 249
    .local v15, id:I
    const/4 v3, 0x0

    const-string v4, "CallPromptText"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 250
    .local v20, text:Ljava/lang/String;
    if-ltz v15, :cond_3

    const/4 v3, 0x2

    if-gt v15, v3, :cond_3

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v20, v3, v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 293
    .end local v15           #id:I
    .end local v16           #name:Ljava/lang/String;
    .end local v17           #parsedEriEntries:I
    .end local v20           #text:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v14, v3

    .line 294
    .local v14, e:Ljava/lang/Exception;
    :try_start_2
    const-string v3, "CDMA"

    const-string v4, "Got exception while loading ERI file."

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 307
    .end local v14           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-interface/range {v18 .. v18}, Landroid/content/res/XmlResourceParser;->close()V

    throw v3

    .line 253
    .restart local v15       #id:I
    .restart local v16       #name:Ljava/lang/String;
    .restart local v17       #parsedEriEntries:I
    .restart local v20       #text:Ljava/lang/String;
    :cond_3
    :try_start_3
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error Parsing ERI file: found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " CallPromptId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 256
    .end local v15           #id:I
    .end local v20           #text:Ljava/lang/String;
    :cond_4
    const-string v3, "EriInfo"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 257
    const/4 v3, 0x0

    const-string v4, "RoamingIndicator"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 259
    .local v4, roamingIndicator:I
    const/4 v3, 0x0

    const-string v5, "IconIndex"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 260
    .local v5, iconIndex:I
    const/4 v3, 0x0

    const-string v6, "IconMode"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 261
    .local v6, iconMode:I
    const/4 v3, 0x0

    const-string v7, "EriText"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, eriText:Ljava/lang/String;
    const/4 v3, 0x0

    const-string v8, "CallPromptId"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v8

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 264
    .local v8, callPromptId:I
    const/4 v3, 0x0

    const-string v9, "AlertId"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 268
    .local v9, alertId:I
    const/4 v3, 0x0

    const-string v10, "BannerStyle"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v10

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 270
    .local v10, bannerStyle:I
    const/4 v3, 0x0

    const-string v11, "CallGuardStatus"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v11

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 272
    .local v11, callGuardStatus:I
    const/4 v3, 0x0

    const-string v12, "Ringer"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v12

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 273
    .local v12, ringer:I
    const/4 v3, 0x0

    const-string v13, "DataCallGuardStatus"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 277
    .local v13, dataCallGuardStatus:I
    add-int/lit8 v17, v17, 0x1

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    move-object v3, v0

    iget-object v14, v3, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v3, Lcom/android/internal/telephony/cdma/EriInfo;

    invoke-direct/range {v3 .. v13}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;IIIIII)V

    invoke-virtual {v14, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 154
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    .line 156
    return-void
.end method

.method public getCdmaEriBannerStyle(II)I
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 840
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriBannerStyle:I

    return v0
.end method

.method public getCdmaEriCallGuardStatus(II)I
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 844
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriCallGuardStatus:I

    return v0
.end method

.method public getCdmaEriDataCallGuardStatus(II)I
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 852
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriDataCallGuardStatus:I

    return v0
.end method

.method public getCdmaEriIconIndex(II)I
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 826
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return v0
.end method

.method public getCdmaEriIconMode(II)I
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 830
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return v0
.end method

.method public getCdmaEriRinger(II)I
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 848
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriRinger:I

    return v0
.end method

.method public getCdmaEriText(II)Ljava/lang/String;
    .locals 1
    .parameter "roamInd"
    .parameter "defRoamInd"

    .prologue
    .line 834
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object v0
.end method

.method public getEriFileType()I
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return v0
.end method

.method public getEriFileVersion()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return v0
.end method

.method public getEriNumberOfEntries()I
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return v0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->isEriFileLoaded:Z

    return v0
.end method

.method public loadEriFile()V
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    packed-switch v0, :pswitch_data_0

    .line 171
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    .line 174
    :goto_0
    return-void

    .line 162
    :pswitch_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    goto :goto_0

    .line 166
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
