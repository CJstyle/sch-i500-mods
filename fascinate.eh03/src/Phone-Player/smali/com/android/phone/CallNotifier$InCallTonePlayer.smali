.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 0
    .parameter
    .parameter "toneId"

    .prologue
    .line 1659
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 1660
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1661
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 1662
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 1668
    const/4 v10, 0x0

    .line 1672
    .local v10, toneType:I
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->getPartialWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    .line 1674
    .local v4, partialWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-nez v12, :cond_0

    .line 1675
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1678
    :cond_0
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "audio"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1680
    .local v0, audioManager:Landroid/media/AudioManager;
    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v12, :pswitch_data_0

    .line 1768
    :pswitch_0
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Bad toneId: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1682
    :pswitch_1
    const/16 v10, 0x16

    .line 1683
    const/16 v11, 0x50

    .line 1684
    .local v11, toneVolume:I
    const/16 v9, 0x1388

    .line 1776
    .local v9, toneLengthMillis:I
    :goto_0
    :try_start_0
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 1777
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v12

    if-eqz v12, :cond_c

    const/4 v12, 0x6

    move v7, v12

    .line 1783
    .local v7, stream:I
    :goto_1
    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    const/16 v13, 0xc

    if-ne v12, v13, :cond_1

    .line 1785
    const/4 v7, 0x1

    .line 1787
    :cond_1
    new-instance v8, Landroid/media/ToneGenerator;

    invoke-direct {v8, v7, v11}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 1791
    .local v8, toneGenerator:Landroid/media/ToneGenerator;
    const-wide/16 v12, 0xc8

    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1813
    .end local v7           #stream:I
    :goto_2
    const/4 v2, 0x1

    .line 1814
    .local v2, needToStopTone:Z
    const/4 v3, 0x0

    .line 1816
    .local v3, okToPlayTone:Z
    if-eqz v8, :cond_6

    .line 1817
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 1818
    .local v5, phoneType:I
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v6

    .line 1819
    .local v6, ringerMode:I
    const/4 v12, 0x2

    if-ne v5, v12, :cond_15

    .line 1820
    const/16 v12, 0x5d

    if-ne v10, v12, :cond_e

    .line 1821
    if-eqz v6, :cond_3

    const/4 v12, 0x1

    if-eq v6, v12, :cond_3

    .line 1823
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$800()Z

    move-result v12

    if-eqz v12, :cond_2

    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1824
    :cond_2
    const/4 v3, 0x1

    .line 1825
    const/4 v2, 0x0

    .line 1848
    :cond_3
    :goto_3
    const/16 v12, 0x15

    iget v13, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    if-ne v12, v13, :cond_4

    .line 1849
    const-string v12, "junho"

    const-string v13, "TONE_SIGNAL_INFO_PIP == mToneId"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const/4 v3, 0x1

    .line 1851
    const/4 v2, 0x0

    .line 1852
    const/16 v10, 0x2c

    .line 1858
    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    .line 1859
    invoke-virtual {v8, v10}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 1860
    add-int/lit8 v12, v9, 0x14

    int-to-long v12, v12

    invoke-static {v12, v13}, Landroid/os/SystemClock;->sleep(J)V

    .line 1861
    if-eqz v2, :cond_5

    .line 1862
    invoke-virtual {v8}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1866
    :cond_5
    invoke-virtual {v8}, Landroid/media/ToneGenerator;->release()V

    .line 1869
    .end local v5           #phoneType:I
    .end local v6           #ringerMode:I
    :cond_6
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1870
    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1886
    :cond_7
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v12, v13, :cond_8

    .line 1887
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    invoke-virtual {v12}, Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V

    .line 1889
    :cond_8
    return-void

    .line 1687
    .end local v2           #needToStopTone:Z
    .end local v3           #okToPlayTone:Z
    .end local v8           #toneGenerator:Landroid/media/ToneGenerator;
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_2
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 1688
    .restart local v5       #phoneType:I
    const/4 v12, 0x2

    if-ne v5, v12, :cond_9

    .line 1689
    const/16 v10, 0x60

    .line 1690
    const/16 v11, 0x32

    .line 1691
    .restart local v11       #toneVolume:I
    const/16 v9, 0x3e8

    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1692
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :cond_9
    const/4 v12, 0x1

    if-ne v5, v12, :cond_a

    .line 1693
    const/16 v10, 0x11

    .line 1694
    const/16 v11, 0x50

    .line 1695
    .restart local v11       #toneVolume:I
    const/16 v9, 0xfa0

    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1697
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :cond_a
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected phone type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1701
    .end local v5           #phoneType:I
    :pswitch_3
    const/16 v10, 0x12

    .line 1702
    const/16 v11, 0x50

    .line 1703
    .restart local v11       #toneVolume:I
    const/16 v9, 0xfa0

    .line 1704
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1710
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_4
    const/16 v10, 0x19

    .line 1711
    const/16 v11, 0x50

    .line 1712
    .restart local v11       #toneVolume:I
    const/16 v9, 0x3e8

    .line 1713
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1715
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_5
    const/16 v10, 0x1b

    .line 1716
    const/16 v11, 0x50

    .line 1717
    .restart local v11       #toneVolume:I
    const/16 v9, 0xc8

    .line 1718
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1720
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_6
    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    #getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneApp;
    invoke-static {v12}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneApp;

    move-result-object v12

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v12, v12, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_b

    .line 1722
    const/16 v10, 0x5d

    .line 1723
    const/16 v11, 0x50

    .line 1724
    .restart local v11       #toneVolume:I
    const/16 v9, 0x2ee

    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1726
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :cond_b
    const/16 v10, 0x1b

    .line 1727
    const/16 v11, 0x50

    .line 1728
    .restart local v11       #toneVolume:I
    const/16 v9, 0xc8

    .line 1730
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1732
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_7
    const/16 v10, 0x56

    .line 1733
    const/16 v11, 0x50

    .line 1734
    .restart local v11       #toneVolume:I
    const/16 v9, 0x1388

    .line 1735
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1737
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_8
    const/16 v10, 0x27

    .line 1738
    const/16 v11, 0x32

    .line 1739
    .restart local v11       #toneVolume:I
    const/16 v9, 0xfa0

    .line 1740
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1742
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_9
    const/16 v10, 0x25

    .line 1743
    const/16 v11, 0x32

    .line 1744
    .restart local v11       #toneVolume:I
    const/16 v9, 0x1f4

    .line 1745
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1748
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_a
    const/16 v10, 0x5f

    .line 1749
    const/16 v11, 0x32

    .line 1750
    .restart local v11       #toneVolume:I
    const/16 v9, 0x177

    .line 1751
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1753
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_b
    const/16 v10, 0x57

    .line 1754
    const/16 v11, 0x32

    .line 1755
    .restart local v11       #toneVolume:I
    const/16 v9, 0x1388

    .line 1756
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1758
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_c
    const/16 v10, 0x19

    .line 1759
    const/16 v11, 0x50

    .line 1760
    .restart local v11       #toneVolume:I
    const/16 v9, 0x3e8

    .line 1761
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1763
    .end local v9           #toneLengthMillis:I
    .end local v11           #toneVolume:I
    :pswitch_d
    const/16 v10, 0x2c

    .line 1764
    const/16 v11, 0x64

    .line 1765
    .restart local v11       #toneVolume:I
    const v9, 0x7fffffeb

    .line 1766
    .restart local v9       #toneLengthMillis:I
    goto/16 :goto_0

    .line 1777
    :cond_c
    const/4 v12, 0x0

    move v7, v12

    goto/16 :goto_1

    .line 1780
    :cond_d
    const/4 v7, 0x0

    .restart local v7       #stream:I
    goto/16 :goto_1

    .line 1793
    .end local v7           #stream:I
    :catch_0
    move-exception v12

    move-object v1, v12

    .line 1794
    .local v1, e:Ljava/lang/RuntimeException;
    const-string v12, "CallNotifier"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const/4 v8, 0x0

    .restart local v8       #toneGenerator:Landroid/media/ToneGenerator;
    goto/16 :goto_2

    .line 1827
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v2       #needToStopTone:Z
    .restart local v3       #okToPlayTone:Z
    .restart local v5       #phoneType:I
    .restart local v6       #ringerMode:I
    :cond_e
    const/16 v12, 0x60

    if-eq v10, v12, :cond_f

    const/16 v12, 0x27

    if-eq v10, v12, :cond_f

    const/16 v12, 0x25

    if-eq v10, v12, :cond_f

    const/16 v12, 0x5f

    if-ne v10, v12, :cond_11

    .line 1831
    :cond_f
    if-eqz v6, :cond_3

    .line 1832
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$800()Z

    move-result v12

    if-eqz v12, :cond_10

    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1833
    :cond_10
    const/4 v3, 0x1

    .line 1834
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1836
    :cond_11
    const/16 v12, 0x57

    if-eq v10, v12, :cond_12

    const/16 v12, 0x56

    if-ne v10, v12, :cond_14

    .line 1838
    :cond_12
    if-eqz v6, :cond_3

    const/4 v12, 0x1

    if-eq v6, v12, :cond_3

    .line 1840
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$800()Z

    move-result v12

    if-eqz v12, :cond_13

    iget-object v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1841
    :cond_13
    const/4 v3, 0x1

    .line 1842
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 1845
    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 1855
    :cond_15
    const/4 v3, 0x1

    goto/16 :goto_4

    .line 1680
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
    .end packed-switch
.end method
