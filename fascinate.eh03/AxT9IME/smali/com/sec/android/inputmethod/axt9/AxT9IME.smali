.class public Lcom/sec/android/inputmethod/axt9/AxT9IME;
.super Landroid/inputmethodservice/InputMethodService;
.source "AxT9IME.java"

# interfaces
.implements Lcom/android/inputmethod/voice/VoiceInput$UiListener;
.implements Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/inputmethod/axt9/AxT9IME$32;,
        Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;,
        Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;,
        Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;,
        Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;,
        Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;,
        Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;
    }
.end annotation


# static fields
.field public static CANDIDATEVIEW_HEIGHT:I

.field public static IS_CORE_INIT:Z

.field static VOICE_INSTALLED:Z

.field public static WINDOW_HEIGHT:I

.field public static WINDOW_WIDTH:I

.field private static final ivt:[B


# instance fields
.field private final BTKEYBOARD_ACTION_STATE_CHANGED:Ljava/lang/String;

.field private final BTKEYBOARD_EXTRA_STATE:Ljava/lang/String;

.field private final BTKEYBOARD_STATE_CONNECTED:I

.field private final BTKEYBOARD_STATE_CONNECTING:I

.field private final BTKEYBOARD_STATE_DISCONNECTED:I

.field private final BTKEYBOARD_STATE_DISCONNECTING:I

.field private EMPTY_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final ERROR:Z

.field private final FX_VOLUME:F

.field private final INFO:Z

.field private LANGUAGE_NUM:I

.field private final MAX_KEY_EVENT_COUNT:I

.field private MY_VIBETONZ_LICENSE_KEY:Ljava/lang/String;

.field private final POPUP_DIALOG_BUTTON_TEXT_SIZE:I

.field private final POPUP_DIALOG_FR_TITLE_TEXT_SIZE:I

.field private final POPUP_DIALOG_TITLE_TEXT_SIZE:I

.field private activityresult:Landroid/content/BroadcastReceiver;

.field private currSymbolsPageNum:I

.field private doubleSpaceAbleChars:Ljava/lang/String;

.field final mActionClickListener:Landroid/view/View$OnClickListener;

.field private mAfterVoiceInput:Z

.field private mAlarmReceiver:Landroid/content/BroadcastReceiver;

.field private mAlternativeChar:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoAppendOn:Z

.field private mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

.field private mAutoCapsOn:Z

.field private mAutoLangOn:Z

.field private mAutoPeriodOn:Z

.field private mAutoSpace:Z

.field private mAutoSubstitutionOn:Z

.field private mAxT9WordCompletionCount:S

.field private mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

.field private mCapsLock:Z

.field private mCapsStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mChangeConfigRequested:Z

.field private mCommitAlternative:Landroid/content/BroadcastReceiver;

.field private mCommitedLength:I

.field private mCompletionOn:Z

.field private mCompletions:[Landroid/view/inputmethod/CompletionInfo;

.field private mComposing:Ljava/lang/StringBuilder;

.field public mConf:Lcom/sec/android/inputmethod/axt9/AxT9Config;

.field private mConfigurationChanging:Z

.field private mConnectBTKeyboard:Landroid/content/BroadcastReceiver;

.field private mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

.field private mCorrectionOn:Z

.field private final mCountOfCompletionList:I

.field private mCurrentInputMethodType:I

.field public mCurrentLang:I

.field private mCursorHandleReceiver:Landroid/content/BroadcastReceiver;

.field private mCustomExtractViewEnabled:Z

.field protected mDeleteCount:I

.field private mDioDictConfigReceiver:Landroid/content/BroadcastReceiver;

.field private mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

.field private mDoubleSpaceCancelLv1:Z

.field private mDoubleSpaceCanceled:Z

.field private mEditorAction:I

.field private mEditorAutoComplete:Z

.field private mEditorMessage:Z

.field private mEditorTypeMultiLine:Z

.field private mEditorTypeSearch:Z

.field private mEnableVoice:Z

.field final mExtractBtnDnClickListener:Landroid/view/View$OnClickListener;

.field final mExtractBtnUpClickListener:Landroid/view/View$OnClickListener;

.field private mForcedCapslock:Z

.field private mHWKeyboardConnected:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasUsedVoiceInput:Z

.field private mHasUsedVoiceInputUnsupportedLocale:Z

.field private mHeightRequestReceiver:Landroid/content/BroadcastReceiver;

.field private mHints:Lcom/sec/android/inputmethod/axt9/Hints;

.field private mHwrPenColor:I

.field private mHwrPenThickness:I

.field private mHwrRecognitionTime:I

.field private mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

.field private mImmediatelyAfterVoiceInput:Z

.field private mImmediatelyAfterVoiceSuggestions:Z

.field private mInputLangOptMenuEnabled:Z

.field protected mInputLanguage:S

.field private mInputLanguageString:[Ljava/lang/CharSequence;

.field private mInputMethodOptMenuEnabled:Z

.field private mInputMethodOptionList:[Ljava/lang/CharSequence;

.field mIsEditorHasText:Z

.field private mIsEmoticonUsable:Z

.field mIsEngToggle:Z

.field private mIsMiniKeyboardInput:Z

.field mIsNoSetting:Z

.field private mIsScreenLocked:Z

.field private mIsSettingLangKorean:Z

.field protected mIsShouldwwwDisplayed:Z

.field private mIsSoftkeyShown:Z

.field mIsStartSelectText:Z

.field mIsTextSelected:Z

.field private mIsUmlautOn:Z

.field private mIsVisibleWindow:Z

.field private mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

.field public mLandInputViewHeight:I

.field mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field public mLanguageCodeList:[Ljava/lang/String;

.field public mLanguageDbId:[S

.field public mLanguageIndex:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mLanguageList:[Ljava/lang/String;

.field private mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

.field private mLastEngT9Mode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

.field private mLastHangulKey:I

.field private mLastInputKeyCodeForOnUpdateSelection:I

.field private mLastKey:I

.field private mLastKeyTime:J

.field private mLastSoundId:I

.field private mLocaleSupportedForVoiceInput:Z

.field private mOldLocale:Ljava/util/Locale;

.field private mOnlyAbcMode:Z

.field private mOptionDlg:Landroid/app/AlertDialog;

.field private mPasswordMode:Z

.field public mPopupCurrentLang:I

.field private mPopupMenuShown:Z

.field private mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

.field public mPortInputViewHeight:I

.field private mPredictionOn:Z

.field private mRecaptureOn:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecognizing:Z

.field private mRegionalCorrectionOn:Z

.field private mRestartInGSearch:Z

.field private mRestartRequested:Z

.field private mScreenLockReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectLanguage:I

.field private mSetShiftMode:Z

.field private mShowingVoiceSuggestions:Z

.field private mShowinputReceiver:Landroid/content/BroadcastReceiver;

.field private mSilentMode:Z

.field private mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

.field private mSoundNVibrateHandler:Landroid/os/Handler;

.field private mSoundOn:Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialActionEditor:Z

.field private mSuggestionListTest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSweepingOn:Z

.field private mSwipeTriggerTimeMillis:J

.field mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

.field private mVibrateDuration:J

.field private mVibrateOn:Z

.field private mVibrator:Landroid/os/Vibrator;

.field private mVoiceHandler:Landroid/os/Handler;

.field private mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

.field private mVoiceInputHighlighted:Z

.field private mVoiceInputOn:Z

.field private mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

.field private mVoiceWarningDialog:Landroid/app/AlertDialog;

.field private mWordToSuggestions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

.field private mXt9Enabled:Z

.field private mbLangChangedForEditor:Z

.field private misLandscapeMode:Z

.field private misUserDefineEditor:Z

.field private multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

.field onPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field onPopupDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    .line 92
    const/16 v0, 0x1e0

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    .line 93
    const/16 v0, 0x140

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    .line 95
    const/16 v0, 0x161

    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->CANDIDATEVIEW_HEIGHT:I

    .line 430
    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->ivt:[B

    .line 456
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    return-void

    .line 430
    :array_0
    .array-data 0x1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x30t
        0x0t
        0x31t
        0x0t
        0x5ft
        0x0t
        0x30t
        0xd1t
        0x58t
        0xcet
        0xa4t
        0xc2t
        0xc0t
        0xd0t
        0xb8t
        0xd2t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v0, 0x18

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 86
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->INFO:Z

    .line 87
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->ERROR:Z

    .line 97
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPortInputViewHeight:I

    .line 98
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLandInputViewHeight:I

    .line 100
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->POPUP_DIALOG_BUTTON_TEXT_SIZE:I

    .line 101
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->POPUP_DIALOG_TITLE_TEXT_SIZE:I

    .line 102
    const/16 v0, 0x15

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->POPUP_DIALOG_FR_TITLE_TEXT_SIZE:I

    .line 204
    const/16 v0, 0x40

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->MAX_KEY_EVENT_COUNT:I

    .line 223
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    .line 224
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupCurrentLang:I

    .line 226
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    .line 263
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    .line 265
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    .line 267
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsMiniKeyboardInput:Z

    .line 268
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    .line 270
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSoftkeyShown:Z

    .line 301
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    .line 302
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    .line 304
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 305
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    .line 306
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEditorHasText:Z

    .line 308
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    .line 309
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    .line 317
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoLangOn:Z

    .line 320
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misUserDefineEditor:Z

    .line 322
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupMenuShown:Z

    .line 325
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsVisibleWindow:Z

    .line 330
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    .line 331
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mChangeConfigRequested:Z

    .line 334
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    .line 337
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorTypeMultiLine:Z

    .line 338
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorTypeSearch:Z

    .line 339
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSpecialActionEditor:Z

    .line 348
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    .line 349
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    .line 350
    const-string v0, "#)\'\"%>"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->doubleSpaceAbleChars:Ljava/lang/String;

    .line 352
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAction:I

    .line 355
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    .line 359
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    .line 362
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 365
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;->UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngT9Mode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishT9Mode;

    .line 381
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->FX_VOLUME:F

    .line 386
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastSoundId:I

    .line 403
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    .line 408
    const/16 v0, 0x9

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    .line 413
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCountOfCompletionList:I

    .line 414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSuggestionListTest:Ljava/util/List;

    .line 415
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->EMPTY_LIST:Ljava/util/List;

    .line 417
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    .line 419
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastHangulKey:I

    .line 428
    const-string v0, "SWTL4GTU6QRDN8FZZZPP67ZBXMLVB9E4"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->MY_VIBETONZ_LICENSE_KEY:Ljava/lang/String;

    .line 458
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$1;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    .line 463
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEnableVoice:Z

    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mWordToSuggestions:Ljava/util/Map;

    .line 508
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsUmlautOn:Z

    .line 510
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyboardConnected:Z

    .line 526
    const-string v0, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->BTKEYBOARD_ACTION_STATE_CHANGED:Ljava/lang/String;

    .line 527
    const-string v0, "com.broadcom.bt.service.hid.extra.STATE"

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->BTKEYBOARD_EXTRA_STATE:Ljava/lang/String;

    .line 528
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->BTKEYBOARD_STATE_DISCONNECTED:I

    .line 529
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->BTKEYBOARD_STATE_CONNECTING:I

    .line 530
    const/4 v0, 0x2

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->BTKEYBOARD_STATE_CONNECTED:I

    .line 531
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->BTKEYBOARD_STATE_DISCONNECTING:I

    .line 548
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$1;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$1;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundNVibrateHandler:Landroid/os/Handler;

    .line 562
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHandler:Landroid/os/Handler;

    .line 564
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$2;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceHandler:Landroid/os/Handler;

    .line 607
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$3;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$3;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mActionClickListener:Landroid/view/View$OnClickListener;

    .line 627
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$4;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$4;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mExtractBtnUpClickListener:Landroid/view/View$OnClickListener;

    .line 633
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$5;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$5;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mExtractBtnDnClickListener:Landroid/view/View$OnClickListener;

    .line 650
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$6;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    .line 3850
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$9;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->activityresult:Landroid/content/BroadcastReceiver;

    .line 3902
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$10;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioDictConfigReceiver:Landroid/content/BroadcastReceiver;

    .line 3925
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$11;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$11;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHeightRequestReceiver:Landroid/content/BroadcastReceiver;

    .line 3962
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$12;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mScreenLockReceiver:Landroid/content/BroadcastReceiver;

    .line 3974
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$13;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$13;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

    .line 3981
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$14;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCursorHandleReceiver:Landroid/content/BroadcastReceiver;

    .line 4017
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$15;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    .line 4036
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$16;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 4046
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$17;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$17;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCommitAlternative:Landroid/content/BroadcastReceiver;

    .line 4058
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$18;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$18;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConnectBTKeyboard:Landroid/content/BroadcastReceiver;

    .line 4073
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$19;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$19;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mShowinputReceiver:Landroid/content/BroadcastReceiver;

    .line 5174
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$20;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$20;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 6181
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$25;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 6190
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$26;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$26;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onPopupDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleVoiceResults()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Ljava/lang/StringBuilder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/widget/DioPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9IME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sec/android/inputmethod/axt9/AxT9IME;Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/inputmethod/axt9/AxT9IME;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    return v0
.end method

.method static synthetic access$1902(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/inputmethod/axt9/AxT9IME;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKeyTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/sec/android/inputmethod/axt9/AxT9IME;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoLangOn(Z)V

    return-void
.end method

.method static synthetic access$2202(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    return p1
.end method

.method static synthetic access$2302(Lcom/sec/android/inputmethod/axt9/AxT9IME;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlternativeChar:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->settingHWKeyboardConnection(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateRingerMode()V

    return-void
.end method

.method static synthetic access$2600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/android/inputmethod/voice/VoiceInput;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/inputmethod/axt9/AxT9IME;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 84
    iget-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSwipeTriggerTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startListening(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/inputmethod/axt9/AxT9IME;)Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/inputmethod/axt9/AxT9IME;Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    return-void
.end method

.method private canUseT9(I)Z
    .locals 2
    .parameter

    .prologue
    .line 2448
    .line 2449
    const-string v0, "-%$#\'"

    .line 2450
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v1

    if-nez v1, :cond_0

    int-to-char v1, p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 2451
    :goto_0
    return v0

    .line 2450
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeToCode(I)V
    .locals 2
    .parameter "code"

    .prologue
    .line 3509
    const/16 v0, -0x89

    if-ne p1, v0, :cond_0

    .line 3510
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3511
    const/16 p1, -0x7c

    .line 3515
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 3516
    return-void
.end method

.method private commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "ic"
    .parameter "text"

    .prologue
    .line 8060
    if-nez p1, :cond_0

    .line 8066
    :goto_0
    return-void

    .line 8063
    :cond_0
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method private commitTyped(Landroid/view/inputmethod/InputConnection;)V
    .locals 2
    .parameter "inputConnection"

    .prologue
    .line 8643
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 8644
    if-eqz p1, :cond_0

    .line 8645
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 8648
    :cond_0
    return-void
.end method

.method private commitVoiceInput()V
    .locals 2

    .prologue
    .line 8628
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 8629
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 8630
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    .line 8631
    return-void
.end method

.method private convertStringtoShortArr(Ljava/lang/String;)[S
    .locals 3
    .parameter "string"

    .prologue
    .line 3559
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [S

    .line 3561
    .local v1, shortarr:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 3562
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    .line 3561
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3565
    :cond_0
    return-object v1
.end method

.method private decreaseSymbolsPageNumber()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x5

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 3691
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v0, :cond_5

    .line 3692
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-nez v0, :cond_2

    .line 3695
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v1, :cond_1

    .line 3696
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v0, :cond_0

    move v0, v5

    :goto_0
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    .line 3738
    :goto_1
    return-void

    :cond_0
    move v0, v4

    .line 3696
    goto :goto_0

    .line 3698
    :cond_1
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3701
    :cond_2
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v1, :cond_4

    .line 3702
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v0, :cond_3

    move v0, v3

    :goto_2
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .line 3704
    :cond_4
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3708
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_8

    .line 3709
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v1, :cond_7

    .line 3710
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v0, :cond_6

    move v0, v3

    :goto_3
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    :cond_6
    move v0, v2

    goto :goto_3

    .line 3712
    :cond_7
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3714
    :cond_8
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-nez v0, :cond_d

    .line 3715
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 3716
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v1, :cond_9

    .line 3717
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3719
    :cond_9
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3722
    :cond_a
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v1, :cond_c

    .line 3723
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v0, :cond_b

    move v0, v5

    :goto_4
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    :cond_b
    move v0, v4

    goto :goto_4

    .line 3725
    :cond_c
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3728
    :cond_d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_f

    .line 3729
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v1, :cond_e

    .line 3730
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3732
    :cond_e
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3735
    :cond_f
    const-string v0, "AxT9IME"

    const-string v1, "decreaseSymbolsPageNumber inputmethod error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private displayHangul(Landroid/view/inputmethod/InputConnection;)V
    .locals 7
    .parameter "ic"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2423
    if-nez p1, :cond_0

    .line 2440
    :goto_0
    return-void

    .line 2427
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getHangulWord()Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;

    move-result-object v1

    .line 2428
    .local v1, hangulWord:Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;
    iget-short v2, v1, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->wComplete:S

    if-lez v2, :cond_1

    .line 2429
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2431
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-short v3, v1, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->wComplete:S

    invoke-virtual {v2, v5, v3}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2432
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-short v3, v1, Lcom/sec/android/inputmethod/axt9/xt9/Xt9Datatype$S_ET9KHangulWord;->wComplete:S

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2433
    .local v0, cs:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2434
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2435
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {p1, v2, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2436
    invoke-interface {p1}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0

    .line 2438
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {p1, v2, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method private doDoubleSpace()V
    .locals 8

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7846
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 7847
    if-nez v0, :cond_1

    .line 7879
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 7848
    :cond_1
    const/4 v1, 0x3

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 7849
    if-eqz v1, :cond_0

    .line 7851
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 7859
    :pswitch_1
    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->doubleSpaceAbleChars:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-interface {v1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, v7, :cond_0

    invoke-interface {v1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_0

    .line 7864
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    if-eqz v1, :cond_3

    .line 7865
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    goto :goto_0

    .line 7868
    :cond_3
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 7869
    invoke-interface {v0, v6, v4}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 7871
    const-string v1, ". "

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 7872
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 7873
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    goto :goto_0

    .line 7851
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private doNextWordPrediction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 4858
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4859
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_0

    .line 4874
    :goto_0
    return-void

    .line 4863
    :cond_0
    const/4 v2, 0x2

    invoke-interface {v1, v2, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4865
    .local v0, charBeforeCorsor:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 4867
    invoke-interface {v0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4868
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 4873
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateComposerFromXT9()V

    goto :goto_0

    .line 4871
    :cond_2
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    goto :goto_1
.end method

.method private getDefaultLocalLanguge()S
    .locals 4

    .prologue
    .line 5926
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 5928
    .local v2, sLocal:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v1

    .local v1, n:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 5929
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5930
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    .line 5934
    :goto_1
    return v3

    .line 5928
    .restart local p0
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5934
    :cond_1
    const/16 v3, 0x9

    goto :goto_1
.end method

.method private getFlagIsAutoCapsOn()Z
    .locals 1

    .prologue
    .line 6358
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapsOn:Z

    return v0
.end method

.method private getFlagIsAutoSubstitutionOn()Z
    .locals 1

    .prologue
    .line 6414
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoSubstitutionOn:Z

    return v0
.end method

.method private getFlagIsPredictionOn()Z
    .locals 1

    .prologue
    .line 6372
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPredictionOn:Z

    return v0
.end method

.method private getFlagIsSoundOn()Z
    .locals 1

    .prologue
    .line 6351
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundOn:Z

    return v0
.end method

.method private getFlagIsSpellCorrectionOn()Z
    .locals 1

    .prologue
    .line 6400
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCorrectionOn:Z

    return v0
.end method

.method private getFlagIsVibrateOn()Z
    .locals 1

    .prologue
    .line 6344
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVibrateOn:Z

    return v0
.end method

.method private getImTypeString(I)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const v3, 0x7f0a002c

    const-string v6, "pl"

    const-string v5, "it"

    const-string v4, "fr"

    const-string v2, "es"

    .line 7158
    const-string v0, ""

    .line 7159
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 7161
    packed-switch p1, :pswitch_data_0

    .line 7196
    :goto_0
    return-object v0

    .line 7163
    :pswitch_0
    const-string v0, "fr"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "pl"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "es"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "it"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7164
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 3x4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7166
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "3x4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7171
    :pswitch_1
    const-string v0, "fr"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pl"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "es"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "it"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7172
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 5x3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 7174
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "5x3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 7179
    :pswitch_2
    const-string v0, "fr"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pl"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "es"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "it"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7180
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 7182
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 7187
    :pswitch_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 7190
    :pswitch_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 7193
    :pswitch_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a007e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 7161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getIsAutoSpace()Z
    .locals 1

    .prologue
    .line 6442
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoSpace:Z

    return v0
.end method

.method private getIsSilentMode()Z
    .locals 1

    .prologue
    .line 6513
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSilentMode:Z

    return v0
.end method

.method private getIsVisibleWindow()Z
    .locals 1

    .prologue
    .line 6498
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsVisibleWindow:Z

    return v0
.end method

.method private getKeycodeFromKeyEvent(I)I
    .locals 2
    .parameter "key"

    .prologue
    .line 8718
    move v0, p1

    .line 8720
    .local v0, ret:I
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8721
    const/16 v1, 0x43

    if-ne v0, v1, :cond_1

    .line 8722
    const/4 v0, -0x5

    .line 8727
    :cond_0
    :goto_0
    return v0

    .line 8724
    :cond_1
    add-int/lit8 v0, v0, 0x44

    goto :goto_0
.end method

.method private getLabelFromCode(I)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0a003e

    const/4 v1, 0x2

    .line 7775
    const-string v0, ""

    .line 7777
    sparse-switch p1, :sswitch_data_0

    .line 7809
    :goto_0
    return-object v0

    .line 7779
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7782
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7785
    :sswitch_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7788
    :sswitch_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7791
    :sswitch_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7794
    :sswitch_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 7795
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7797
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7801
    :sswitch_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 7802
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7804
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 7777
    :sswitch_data_0
    .sparse-switch
        -0x89 -> :sswitch_3
        -0x88 -> :sswitch_4
        -0x87 -> :sswitch_2
        -0x86 -> :sswitch_0
        -0x85 -> :sswitch_1
        -0x6e -> :sswitch_6
        -0x6d -> :sswitch_5
    .end sparse-switch
.end method

.method private getLastWordBeforeCorsor()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const-string v3, ""

    .line 4882
    const-string v0, ""

    .line 4883
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4884
    if-nez v0, :cond_0

    .line 4885
    const-string v0, "AxT9IME"

    const-string v1, "ERROR : InputConnection is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4886
    const-string v0, ""

    move-object v0, v3

    .line 4917
    :goto_0
    return-object v0

    .line 4889
    :cond_0
    const/16 v1, 0x40

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 4890
    if-nez p0, :cond_1

    .line 4892
    const-string v0, ""

    move-object v0, v3

    goto :goto_0

    .line 4895
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4896
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 4897
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 4899
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4901
    if-nez v0, :cond_2

    .line 4902
    const-string v0, ""

    move-object v0, v3

    goto :goto_0

    .line 4903
    :cond_2
    if-ne v1, v5, :cond_3

    move-object v0, p0

    .line 4904
    goto :goto_0

    .line 4905
    :cond_3
    sub-int v2, v0, v6

    if-ne v1, v2, :cond_6

    move-object v2, p0

    move v8, v0

    move v0, v1

    move v1, v8

    .line 4906
    :goto_1
    sub-int/2addr v1, v6

    if-ne v0, v1, :cond_4

    .line 4907
    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4908
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 4909
    invoke-virtual {v0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 4910
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4911
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    move v8, v1

    move v1, v2

    move-object v2, v0

    move v0, v8

    goto :goto_1

    .line 4913
    :cond_4
    if-ne v0, v5, :cond_5

    move v0, v4

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 4915
    :cond_6
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getLastWordDividerIndex()I
    .locals 10

    .prologue
    const/16 v8, 0x20

    const/16 v7, 0xa

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 4921
    .line 4923
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4924
    if-nez v0, :cond_0

    .line 4925
    const-string v0, "AxT9IME"

    const-string v1, "ERROR : InputConnection is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v4

    .line 4958
    :goto_0
    return v0

    .line 4929
    :cond_0
    const/16 v1, 0x40

    invoke-interface {v0, v1, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 4930
    if-nez p0, :cond_1

    move v0, v4

    .line 4932
    goto :goto_0

    .line 4934
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 4935
    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 4936
    invoke-virtual {p0, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 4938
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4940
    if-nez v0, :cond_2

    move v0, v4

    .line 4941
    goto :goto_0

    .line 4942
    :cond_2
    if-ne v1, v5, :cond_3

    .line 4943
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0

    .line 4944
    :cond_3
    sub-int v2, v0, v6

    if-ne v1, v2, :cond_6

    move v2, v0

    move-object v3, p0

    move v0, v4

    .line 4946
    :goto_1
    sub-int/2addr v2, v6

    if-ne v1, v2, :cond_4

    if-ltz v1, :cond_4

    .line 4947
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 4948
    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 4949
    invoke-virtual {v1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 4950
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4951
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 4952
    add-int/lit8 v0, v0, 0x1

    move v9, v2

    move v2, v3

    move-object v3, v1

    move v1, v9

    goto :goto_1

    .line 4954
    :cond_4
    if-ne v1, v5, :cond_5

    move v1, v4

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 4955
    goto :goto_0

    .line 4954
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4956
    :cond_6
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_0
.end method

.method private getSettingLanguage()V
    .locals 13

    .prologue
    const/16 v12, 0x20

    const/16 v11, 0x12

    const/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5750
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5753
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5754
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5755
    const/4 v0, -0x1

    .line 5756
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    move v4, v8

    move v5, v0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 5757
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v0

    .line 5758
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 5759
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v4

    .line 5760
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    if-ne v0, v11, :cond_0

    move v5, v4

    .line 5763
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-interface {v1, v0, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5764
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5765
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5756
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 5768
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    .line 5770
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    array-length v3, v0

    move v4, v8

    :goto_1
    if-ge v4, v3, :cond_3

    .line 5771
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    aput-short v0, v6, v4

    .line 5770
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 5774
    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5775
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getDefaultLocalLanguge()S

    move-result v2

    move v3, v8

    .line 5777
    :goto_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v0

    if-ge v3, v0, :cond_4

    .line 5778
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    if-ne v2, v0, :cond_8

    .line 5779
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    .line 5780
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5784
    :cond_4
    if-ne v2, v11, :cond_9

    .line 5785
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5786
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassText()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-eq v0, v12, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-eq v0, v10, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v2, 0x90

    if-ne v0, v2, :cond_6

    .line 5791
    :cond_5
    iput v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    .line 5792
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    .line 5853
    :cond_6
    :goto_3
    const-string v0, "select_language"

    iget v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 5854
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5855
    if-ne v0, v5, :cond_15

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassText()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v1

    if-eq v1, v12, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v1

    if-eq v1, v10, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v1

    const/16 v2, 0x80

    if-eq v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v1

    const/16 v2, 0x90

    if-ne v1, v2, :cond_15

    .line 5867
    :cond_7
    :goto_4
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 5871
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    if-ne v0, v5, :cond_16

    move v0, v9

    :goto_5
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    .line 5872
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 5873
    return-void

    .line 5777
    :cond_8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_2

    .line 5794
    :cond_9
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v9, :cond_6

    const/16 v0, 0x9

    if-eq v2, v0, :cond_6

    .line 5795
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5796
    iput v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    .line 5797
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    goto :goto_3

    .line 5801
    :cond_a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v9, :cond_c

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    aget-short v0, v0, v8

    if-ne v0, v11, :cond_c

    .line 5803
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5809
    :cond_b
    :goto_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 5810
    const/4 v2, -0x1

    .line 5811
    const-string v3, "en"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 5812
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 5813
    const-string v3, "GB"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5814
    const-string v0, "en(UK)"

    move-object v3, v0

    .line 5821
    :goto_7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move v6, v2

    move v2, v8

    :goto_8
    if-ge v2, v4, :cond_f

    .line 5822
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 5823
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v2

    .line 5821
    :goto_9
    add-int/lit8 v2, v2, 0x1

    move v6, v0

    goto :goto_8

    .line 5804
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    aget-short v0, v0, v8

    const/16 v2, 0x9

    if-eq v0, v2, :cond_b

    .line 5805
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 5806
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    goto :goto_6

    .line 5815
    :cond_d
    const-string v3, "US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 5816
    const-string v0, "en(US)"

    move-object v3, v0

    goto :goto_7

    .line 5818
    :cond_e
    const-string v0, "en(UK)"

    move-object v3, v0

    goto :goto_7

    .line 5828
    :cond_f
    const/4 v0, -0x1

    if-ne v6, v0, :cond_12

    .line 5829
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassText()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-eq v0, v12, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-eq v0, v10, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v2, 0x90

    if-ne v0, v2, :cond_11

    .line 5834
    :cond_10
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    .line 5838
    :cond_11
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    goto/16 :goto_3

    .line 5839
    :cond_12
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    array-length v0, v0

    if-ne v0, v9, :cond_14

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageDbId:[S

    aget-short v0, v0, v8

    if-ne v0, v11, :cond_14

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassText()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-eq v0, v12, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-eq v0, v10, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v2, 0x80

    if-eq v0, v2, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v2, 0x90

    if-ne v0, v2, :cond_14

    .line 5846
    :cond_13
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    .line 5847
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    goto/16 :goto_3

    .line 5849
    :cond_14
    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    goto/16 :goto_3

    .line 5863
    :cond_15
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    goto/16 :goto_4

    :cond_16
    move v0, v8

    .line 5871
    goto/16 :goto_5

    :cond_17
    move v0, v6

    goto/16 :goto_9

    :cond_18
    move-object v3, v0

    goto/16 :goto_7
.end method

.method private getSettingValues()V
    .locals 11

    .prologue
    const/16 v9, 0xff

    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, "blue"

    .line 5652
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5653
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 5656
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "haptic_feedback_enabled"

    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setVibrateOn(Z)V

    .line 5658
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dtmf_tone"

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSoundOn(Z)V

    .line 5661
    const-string v0, "Auto_capitalization"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoCapsOn(Z)V

    .line 5663
    const-string v0, "Auto_period"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoPeriodOn:Z

    .line 5664
    const-string v0, "voice_input_enabled"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    .line 5666
    const-string v0, "xt9_enabled"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    .line 5669
    const-string v0, "word_completion"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoCompletionOn(Z)V

    .line 5670
    const-string v0, "next_word_prediction"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPredictionOn(Z)V

    .line 5671
    const-string v0, "spell_correction"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpellCorrectionOn(Z)V

    .line 5672
    const-string v0, "auto_append"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoAppendOn(Z)V

    .line 5673
    const-string v0, "auto_subtitution"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoSubstitutionOn(Z)V

    .line 5674
    const-string v0, "regional_correction"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setRegionalCorrectionOn(Z)V

    .line 5675
    const-string v0, "recapture"

    invoke-interface {v1, v0, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setRecaptureOn(Z)V

    .line 5677
    const-string v0, "inputmethod_type"

    const-string v2, "-1"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 5678
    if-ne v2, v8, :cond_9

    .line 5679
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const-string v3, "qwertykeyboard"

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->parseImTypeValue(Ljava/lang/String;)I

    move-result v3

    .line 5680
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodListSize()I

    move-result v4

    move v5, v6

    :goto_2
    if-ge v5, v4, :cond_9

    .line 5681
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_2

    move v0, v5

    .line 5688
    :goto_3
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentInputMethodType:I

    .line 5690
    const-string v0, "word_completion_point"

    const-string v2, "2"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAxT9WordCompletionCount:S

    .line 5692
    const-string v0, "keypad_sweeping"

    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSweepingOn:Z

    .line 5695
    const-string v0, "recognition_time"

    const-string v2, "500"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrRecognitionTime:I

    .line 5697
    const-string v0, "pen_thickness"

    const-string v2, "4"

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenThickness:I

    .line 5699
    const-string v0, "pen_color"

    const-string v2, "blue"

    invoke-interface {v1, v0, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5701
    const-string v1, "black"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5702
    const/high16 v0, -0x100

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenColor:I

    .line 5747
    :goto_4
    return-void

    :cond_0
    move v0, v6

    .line 5656
    goto/16 :goto_0

    :cond_1
    move v0, v6

    .line 5658
    goto/16 :goto_1

    .line 5680
    :cond_2
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_2

    .line 5703
    :cond_3
    const-string v1, "white"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5704
    iput v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenColor:I

    goto :goto_4

    .line 5705
    :cond_4
    const-string v1, "red"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5706
    const/high16 v0, -0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenColor:I

    goto :goto_4

    .line 5707
    :cond_5
    const-string v1, "blue"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5708
    const/16 v0, 0xb4

    invoke-static {v9, v6, v0, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenColor:I

    goto :goto_4

    .line 5709
    :cond_6
    const-string v1, "green"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5710
    const v0, -0xff0100

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenColor:I

    goto :goto_4

    .line 5711
    :cond_7
    const-string v1, "yellow"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5712
    const/16 v0, -0x100

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenColor:I

    goto :goto_4

    .line 5714
    :cond_8
    const v0, -0xffff01

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenColor:I

    goto :goto_4

    :cond_9
    move v0, v2

    goto/16 :goto_3
.end method

.method private handleClose()V
    .locals 1

    .prologue
    .line 4979
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 4980
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 4983
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 4984
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->requestHideSelf(I)V

    .line 4985
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_1

    .line 4986
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->closing()V

    .line 4989
    :cond_1
    return-void
.end method

.method private handleInputEmailAddress(I)V
    .locals 2
    .parameter

    .prologue
    .line 4091
    const/16 v0, -0x6b

    if-ne p1, v0, :cond_2

    .line 4092
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4097
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4098
    if-eqz v1, :cond_0

    .line 4099
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 4100
    invoke-direct {p0, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 4102
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4104
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v0, v1, :cond_3

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4105
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 4109
    :cond_1
    :goto_1
    return-void

    .line 4094
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4106
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v0, :cond_1

    .line 4107
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_1
.end method

.method private handleModeChange([IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3480
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gtz v0, :cond_1

    .line 3481
    :cond_0
    const-string v0, "AxT9IME"

    const-string v1, "AxT9IME.handleModeChange() ------ enableInputMode == null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3506
    :goto_0
    return-void

    .line 3484
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputModeCode()I

    move-result v0

    .line 3485
    const/4 v1, -0x1

    move v2, v4

    .line 3486
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_6

    .line 3487
    aget v3, p1, v2

    if-ne v0, v3, :cond_2

    move v0, v2

    .line 3493
    :goto_2
    if-eqz p2, :cond_4

    .line 3494
    array-length v1, p1

    add-int/lit8 v2, v0, 0x1

    if-le v1, v2, :cond_3

    .line 3495
    add-int/lit8 v0, v0, 0x1

    aget v0, p1, v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->changeToCode(I)V

    goto :goto_0

    .line 3486
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3497
    :cond_3
    aget v0, p1, v4

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->changeToCode(I)V

    goto :goto_0

    .line 3500
    :cond_4
    if-nez v0, :cond_5

    .line 3501
    array-length v0, p1

    sub-int/2addr v0, v5

    aget v0, p1, v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->changeToCode(I)V

    goto :goto_0

    .line 3503
    :cond_5
    sub-int/2addr v0, v5

    aget v0, p1, v0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->changeToCode(I)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method private handleMoveSymbolPage(I)V
    .locals 2
    .parameter "Arrow"

    .prologue
    .line 3761
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3773
    :goto_0
    return-void

    .line 3764
    :cond_0
    const/16 v0, -0x68

    if-ne p1, v0, :cond_1

    .line 3766
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->decreaseSymbolsPageNumber()V

    .line 3767
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_0

    .line 3770
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->increaseSymbolsPageNumber()V

    .line 3771
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_0
.end method

.method private handleShiftkey()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 4175
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4176
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-ne v4, v8, :cond_4

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 4183
    :goto_0
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 4185
    :cond_0
    const/4 v1, 0x3

    .line 4187
    .local v1, bPostShiftMode:B
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v4, :cond_5

    .line 4188
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 4189
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 4190
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 4191
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v4

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 4192
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4193
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 4195
    :cond_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 4196
    const/4 v1, 0x0

    .line 4232
    :goto_1
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 4234
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4235
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    .line 4236
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectListPostShift(B)B

    .line 4237
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4238
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v0

    .line 4239
    .local v0, InputWord:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 4240
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4241
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 4242
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_2

    .line 4243
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v4, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4246
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v5

    invoke-virtual {p0, v4, v7, v7, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 4249
    .end local v0           #InputWord:Ljava/lang/CharSequence;
    :cond_3
    return-void

    .line 4181
    .end local v1           #bPostShiftMode:B
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    goto/16 :goto_0

    .line 4197
    .restart local v1       #bPostShiftMode:B
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 4199
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 4200
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 4201
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 4202
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v4

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 4203
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 4204
    const/4 v1, 0x0

    goto :goto_1

    .line 4216
    :cond_6
    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 4217
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4, v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 4220
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 4221
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 4222
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v4

    check-cast v4, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 4223
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 4224
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 4226
    :cond_7
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v3, v7

    .line 4228
    .local v3, shiftMode:B
    :goto_2
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 4229
    const/4 v1, 0x1

    goto/16 :goto_1

    .end local v3           #shiftMode:B
    :cond_9
    move v3, v8

    .line 4226
    goto :goto_2
.end method

.method private handleT9OnOff()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 3575
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3602
    :goto_0
    return-void

    .line 3579
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 3581
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3582
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3583
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 3585
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setXt9SettingEnabled(Z)V

    .line 3587
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3601
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    goto :goto_0

    .line 3588
    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 3590
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3591
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setXt9SettingEnabled(Z)V

    .line 3592
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3593
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 3594
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3596
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 3599
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_1
.end method

.method private handleVoiceResults()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 8558
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAfterVoiceInput:Z

    .line 8559
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mImmediatelyAfterVoiceInput:Z

    .line 8561
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 8562
    .local v4, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isFullscreenMode()Z

    move-result v7

    if-nez v7, :cond_0

    .line 8564
    if-eqz v4, :cond_0

    .line 8565
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    .line 8566
    .local v6, req:Landroid/view/inputmethod/ExtractedTextRequest;
    invoke-interface {v4, v6, v9}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    .line 8570
    .end local v6           #req:Landroid/view/inputmethod/ExtractedTextRequest;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->vibrate()V

    .line 8571
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->switchToKeyboardView()V

    .line 8573
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 8574
    .local v5, nBest:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isShifted()Z

    move-result v2

    .line 8575
    .local v2, capitalizeFirstWord:Z
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    iget-object v7, v7, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 8576
    .local v1, c:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 8577
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v1, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8579
    :cond_1
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8582
    .end local v1           #c:Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_3

    .line 8618
    :goto_1
    return-void

    .line 8586
    :cond_3
    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8588
    .local v0, bestResult:Ljava/lang/String;
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/inputmethod/voice/VoiceInput;->logVoiceInputDelivered(I)V

    .line 8590
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHints:Lcom/sec/android/inputmethod/axt9/Hints;

    invoke-virtual {v7, v0}, Lcom/sec/android/inputmethod/axt9/Hints;->registerVoiceResult(Ljava/lang/String;)V

    .line 8592
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 8594
    :cond_4
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTyped(Landroid/view/inputmethod/InputConnection;)V

    .line 8595
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v7

    if-nez v7, :cond_5

    .line 8596
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 8597
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 8602
    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    .line 8603
    invoke-static {v4, v0}, Lcom/android/inputmethod/voice/EditingUtil;->appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 8604
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    .line 8605
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 8609
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_7

    .line 8610
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mImmediatelyAfterVoiceSuggestions:Z

    .line 8611
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mShowingVoiceSuggestions:Z

    .line 8613
    invoke-virtual {p0, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 8615
    :cond_7
    iput-boolean v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    .line 8616
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mWordToSuggestions:Ljava/util/Map;

    iget-object v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    iget-object v8, v8, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;->alternatives:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 8598
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 8599
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private increaseSymbolsPageNumber()V
    .locals 7

    .prologue
    const/4 v6, 0x7

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 3634
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v0, :cond_5

    .line 3635
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-nez v0, :cond_2

    .line 3638
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v1, :cond_0

    move v1, v6

    :goto_0
    if-ne v0, v1, :cond_1

    .line 3639
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    .line 3681
    :goto_1
    return-void

    :cond_0
    move v1, v5

    .line 3638
    goto :goto_0

    .line 3641
    :cond_1
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3644
    :cond_2
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v1, :cond_3

    move v1, v4

    :goto_2
    if-ne v0, v1, :cond_4

    .line 3645
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    :cond_3
    move v1, v3

    .line 3644
    goto :goto_2

    .line 3647
    :cond_4
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3651
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 3652
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v1, :cond_6

    move v1, v4

    :goto_3
    if-ne v0, v1, :cond_7

    .line 3653
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    :cond_6
    move v1, v3

    .line 3652
    goto :goto_3

    .line 3655
    :cond_7
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3657
    :cond_8
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-nez v0, :cond_d

    .line 3658
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 3659
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v3, :cond_9

    .line 3660
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3662
    :cond_9
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3665
    :cond_a
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    if-eqz v1, :cond_b

    move v1, v6

    :goto_4
    if-ne v0, v1, :cond_c

    .line 3666
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    :cond_b
    move v1, v5

    .line 3665
    goto :goto_4

    .line 3668
    :cond_c
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3671
    :cond_d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v2, :cond_f

    .line 3672
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    if-ne v0, v3, :cond_e

    .line 3673
    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto :goto_1

    .line 3675
    :cond_e
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    goto/16 :goto_1

    .line 3678
    :cond_f
    const-string v0, "AxT9IME"

    const-string v1, "increaseSymbolsPageNumber inputmethod error!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private initSounds()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 5186
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 5187
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    .line 5190
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 5191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    .line 5192
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f060003

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5193
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f060002

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5194
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x7f06

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5195
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    const v3, 0x7f060001

    invoke-virtual {v2, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5198
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_2

    .line 5199
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    .line 5200
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateRingerMode()V

    .line 5202
    :cond_2
    return-void
.end method

.method private isFunctionKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 7969
    const/4 v0, 0x0

    .line 7971
    .local v0, isFunction:Z
    packed-switch p1, :pswitch_data_0

    .line 7991
    :pswitch_0
    const/4 v0, 0x0

    .line 7994
    :goto_0
    return v0

    .line 7988
    :pswitch_1
    const/4 v0, 0x1

    .line 7989
    goto :goto_0

    .line 7971
    :pswitch_data_0
    .packed-switch -0x7d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isNumericKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 1868
    invoke-static {p1}, Ljava/lang/Character;->isDigit(I)Z

    move-result v0

    return v0
.end method

.method private isRussianAlphaKey(I)Z
    .locals 3
    .parameter "keyCode"

    .prologue
    const/16 v2, 0x61

    .line 1895
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v1, 0x19

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-eq v0, v2, :cond_0

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v1, 0x22

    if-ne v0, v1, :cond_1

    .line 1899
    :cond_0
    const/16 v0, 0x80

    if-gt p1, v0, :cond_1

    if-lt p1, v2, :cond_1

    .line 1900
    const/4 v0, 0x1

    .line 1903
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSentenceSeparator(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    .line 7819
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 7820
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private isShouldSetShifted(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "\n"

    const-string v4, ""

    .line 4575
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 4607
    :goto_0
    return v0

    .line 4580
    :cond_1
    if-eqz p1, :cond_2

    if-nez p2, :cond_3

    :cond_2
    move v0, v2

    .line 4581
    goto :goto_0

    .line 4586
    :cond_3
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$32;->$SwitchMap$com$sec$android$inputmethod$axt9$AxT9IME$Capitalize:[I

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_4
    move v0, v2

    .line 4607
    goto :goto_0

    .line 4588
    :pswitch_0
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_5
    move v0, v3

    .line 4589
    goto :goto_0

    .line 4593
    :pswitch_1
    const-string v0, ". "

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "? "

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "! "

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ".\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "?\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "!\n"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, ""

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\n"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_6
    move v0, v3

    .line 4596
    goto :goto_0

    :pswitch_2
    move v0, v3

    .line 4601
    goto :goto_0

    .line 4586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isShouldSetShiftedForEnter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4617
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v3

    .line 4639
    :goto_0
    return v0

    .line 4622
    :cond_1
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$32;->$SwitchMap$com$sec$android$inputmethod$axt9$AxT9IME$Capitalize:[I

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_2
    move v0, v3

    .line 4639
    goto :goto_0

    :pswitch_0
    move v0, v2

    .line 4624
    goto :goto_0

    .line 4626
    :pswitch_1
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "!"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    move v0, v2

    .line 4628
    goto :goto_0

    :pswitch_2
    move v0, v2

    .line 4633
    goto :goto_0

    .line 4622
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z
    .locals 1
    .parameter "run"

    .prologue
    .line 1859
    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->isRunning()Z

    move-result v0

    return v0
.end method

.method private isUpperCase(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 1886
    invoke-static {p1}, Ljava/lang/Character;->isUpperCase(I)Z

    move-result v0

    return v0
.end method

.method private isUsingHWKeypad()Z
    .locals 1

    .prologue
    .line 8734
    const/4 v0, 0x0

    .line 8740
    .local v0, ret:Z
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyboardConnected:Z

    .line 8742
    return v0
.end method

.method private onKeyDownUpHandle(I)V
    .locals 3
    .parameter "keyCodes"

    .prologue
    .line 2553
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 2554
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 2555
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2556
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2558
    :cond_0
    return-void
.end method

.method private onMultitapShiftModeProc()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 665
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 666
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v3, :cond_0

    .line 668
    const-string v1, ""

    .line 669
    .local v1, lastOneChar:Ljava/lang/String;
    const-string v2, ""

    .line 670
    .local v2, lastTwoChar:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 671
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 672
    const/4 v3, 0x1

    invoke-interface {v0, v3, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .end local v1           #lastOneChar:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 673
    .restart local v1       #lastOneChar:Ljava/lang/String;
    invoke-interface {v0, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2           #lastTwoChar:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 675
    .restart local v2       #lastTwoChar:Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isShouldSetShifted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 678
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 679
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    goto :goto_0

    .line 683
    :cond_3
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isShiftPressed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 684
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_0
.end method

.method private onMultitapTimeOut()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1824
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1825
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 1826
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1827
    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastHangulKey:I

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1828
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 1829
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastHangulKey:I

    .line 1851
    :cond_1
    :goto_0
    return-void

    .line 1831
    :cond_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v1, :cond_1

    .line 1832
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->invokeTimeOut()V

    goto :goto_0

    .line 1838
    :cond_3
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1840
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v1, :cond_4

    .line 1841
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 1844
    :cond_4
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSentenceSeparator(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1847
    :cond_5
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1848
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto :goto_0
.end method

.method private playKeySound(I)V
    .locals 7
    .parameter

    .prologue
    .line 5209
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 5211
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastSoundId:I

    if-eqz v0, :cond_0

    .line 5212
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->pause(I)V

    .line 5214
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "situation=1;device=0"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 5216
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPoolMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastSoundId:I

    .line 5218
    :cond_1
    return-void
.end method

.method private reallyStartListening(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 8421
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHasUsedVoiceInput:Z

    if-nez v0, :cond_0

    .line 8424
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8426
    const-string v1, "has_used_voice_input"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8427
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8428
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHasUsedVoiceInput:Z

    .line 8431
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLocaleSupportedForVoiceInput:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHasUsedVoiceInputUnsupportedLocale:Z

    if-nez v0, :cond_1

    .line 8434
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8436
    const-string v1, "has_used_voice_input_unsupported_locale"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8437
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 8438
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHasUsedVoiceInputUnsupportedLocale:Z

    .line 8445
    :cond_1
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    sparse-switch v0, :sswitch_data_0

    move-object v0, v4

    move-object v1, v4

    .line 8498
    :goto_0
    new-instance v2, Lcom/android/inputmethod/voice/FieldContext;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1, v0}, Lcom/android/inputmethod/voice/FieldContext;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V

    .line 8503
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0, v2, p1}, Lcom/android/inputmethod/voice/VoiceInput;->startListening(Lcom/android/inputmethod/voice/FieldContext;Z)V

    .line 8504
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->switchToRecognitionStatusView()V

    .line 8505
    return-void

    .line 8447
    :sswitch_0
    const-string v0, "de"

    .line 8448
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 8449
    goto :goto_0

    .line 8451
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v0

    .line 8452
    const v1, 0x7f0a0048

    if-ne v0, v1, :cond_2

    .line 8453
    const-string v0, "en_GB"

    .line 8462
    :goto_1
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 8463
    goto :goto_0

    .line 8454
    :cond_2
    const v1, 0x7f0a0049

    if-ne v0, v1, :cond_3

    .line 8455
    const-string v0, "en_US"

    goto :goto_1

    .line 8457
    :cond_3
    const-string v0, "en"

    goto :goto_1

    .line 8465
    :sswitch_2
    const-string v0, "es"

    .line 8466
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 8467
    goto :goto_0

    .line 8469
    :sswitch_3
    const-string v0, "fr"

    .line 8470
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 8471
    goto :goto_0

    .line 8473
    :sswitch_4
    const-string v0, "it"

    .line 8474
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 8475
    goto :goto_0

    .line 8477
    :sswitch_5
    const-string v0, "ko_KR"

    .line 8478
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 8479
    goto :goto_0

    .line 8481
    :sswitch_6
    const-string v0, "nl"

    .line 8482
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 8483
    goto :goto_0

    .line 8485
    :sswitch_7
    const-string v0, "pl"

    .line 8486
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 8487
    goto/16 :goto_0

    .line 8489
    :sswitch_8
    const-string v0, "pt"

    .line 8490
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 8491
    goto/16 :goto_0

    .line 8493
    :sswitch_9
    const-string v0, "tr"

    .line 8494
    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v3

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto/16 :goto_0

    .line 8445
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x9 -> :sswitch_1
        0xa -> :sswitch_2
        0xc -> :sswitch_3
        0x10 -> :sswitch_4
        0x12 -> :sswitch_5
        0x13 -> :sswitch_6
        0x15 -> :sswitch_7
        0x16 -> :sswitch_8
        0x1f -> :sswitch_9
    .end sparse-switch
.end method

.method private revertVoiceInput()V
    .locals 3

    .prologue
    .line 8621
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 8622
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    const-string v1, ""

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 8624
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    .line 8625
    return-void
.end method

.method private sendInputLanguage()V
    .locals 3

    .prologue
    .line 6209
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6210
    const-string v1, "inputLanguageAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6211
    const-string v1, "AxT9IME.inputLanguage"

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputLanguageCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 6212
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendBroadcast(Landroid/content/Intent;)V

    .line 6213
    return-void
.end method

.method private sendKey(I[I)V
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x2

    const/16 v5, 0x3e8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v4, ""

    .line 2166
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2167
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-ne v0, v8, :cond_7

    move v0, v6

    .line 2168
    :goto_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v1

    .line 2169
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastHangulKey:I

    .line 2171
    const/16 v3, 0xa

    if-ne p1, v3, :cond_b

    .line 2172
    const-string v0, ""

    .line 2173
    const-string v0, ""

    .line 2174
    if-eqz v2, :cond_2b

    .line 2175
    invoke-interface {v2, v6, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2176
    invoke-interface {v2, v8, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2177
    if-nez v0, :cond_0

    const-string v0, ""

    move-object v0, v4

    .line 2178
    :cond_0
    if-nez v1, :cond_1

    const-string v1, ""

    move-object v1, v4

    :cond_1
    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 2183
    :goto_1
    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    .line 2184
    invoke-direct {p0, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isShouldSetShiftedForEnter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 2187
    :goto_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-gtz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v3

    if-lez v3, :cond_3

    .line 2188
    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->noteWordDone(I)V

    .line 2189
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 2190
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2197
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMultiLineEditorflag()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2198
    if-eqz v2, :cond_4

    .line 2200
    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendDefaultEditorAction(Z)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2201
    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendDownUpKeyEvents(I)V

    .line 2205
    :cond_4
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2218
    :cond_5
    :goto_3
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v2

    if-nez v2, :cond_a

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v2, :cond_a

    .line 2219
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    .line 2404
    :cond_6
    :goto_4
    return-void

    :cond_7
    move v0, v7

    .line 2167
    goto/16 :goto_0

    .line 2206
    :cond_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSpecialActionflag()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2207
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 2208
    if-eqz v2, :cond_5

    if-eqz v3, :cond_5

    .line 2209
    iget v3, v3, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v3, v3, 0xff

    invoke-interface {v2, v3}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_3

    .line 2213
    :cond_9
    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendDefaultEditorAction(Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2214
    const/16 v2, 0x42

    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendDownUpKeyEvents(I)V

    goto :goto_3

    .line 2220
    :cond_a
    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v0, :cond_6

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2223
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_4

    .line 2225
    :cond_b
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRussianAlphaKey(I)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_c
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    if-eq v3, v6, :cond_25

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isInMultiTap()Z

    move-result v3

    if-nez v3, :cond_25

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isKeyLongPressed()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    if-eqz v3, :cond_25

    .line 2230
    :cond_d
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    const/16 v4, 0x40

    if-le v3, v4, :cond_e

    .line 2231
    const-string v0, "AxT9IME"

    const-string v1, "AxT9IME.sendKey() : Max keyevent"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2235
    :cond_e
    if-eqz v1, :cond_13

    .line 2236
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2237
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2238
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2239
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V

    .line 2284
    :cond_f
    :goto_5
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    int-to-short v4, p1

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->processKey(S)S

    move-result v3

    .line 2285
    if-eqz v3, :cond_29

    .line 2286
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v4, 0x1f

    if-eq v3, v4, :cond_28

    const/16 v3, 0x131

    if-ne p1, v3, :cond_28

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 2289
    const/16 v3, 0x130

    .line 2295
    :goto_6
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUpperCase(I)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2296
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    int-to-short v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->explictSymb(SB)S

    .line 2303
    :goto_7
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    .line 2305
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_10

    .line 2306
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2307
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2310
    :cond_10
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isMultitapMode()Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v4

    if-ne v4, v6, :cond_11

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v4

    if-nez v4, :cond_11

    .line 2314
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_11

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2316
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    int-to-short v5, v3

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->processKey(S)S

    .line 2317
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    .line 2318
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2319
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2323
    :cond_11
    if-eqz v2, :cond_12

    .line 2324
    if-eqz v0, :cond_22

    if-nez v1, :cond_22

    .line 2325
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2326
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2327
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 2330
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 2332
    int-to-char v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2337
    :goto_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_12

    .line 2338
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 2378
    :cond_12
    :goto_9
    if-eqz v1, :cond_6

    .line 2379
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v1

    invoke-virtual {p0, v0, v6, v6, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 2381
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v0, v1, :cond_24

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 2382
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto/16 :goto_4

    .line 2242
    :cond_13
    if-eqz v0, :cond_16

    .line 2243
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 2244
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2245
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V

    .line 2247
    :cond_14
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    if-eq v3, p1, :cond_f

    .line 2248
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRussianAlphaKey(I)Z

    move-result v3

    if-nez v3, :cond_15

    .line 2249
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 2251
    :cond_15
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    goto/16 :goto_5

    .line 2255
    :cond_16
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2256
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;I)V

    .line 2258
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    if-eq v3, p1, :cond_19

    .line 2259
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    if-eqz v3, :cond_17

    .line 2260
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_17

    .line 2261
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V

    .line 2265
    :cond_17
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2266
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2267
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2268
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;I)V

    .line 2270
    :cond_18
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    goto/16 :goto_5

    .line 2271
    :cond_19
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    if-ne v3, p1, :cond_1a

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentMultitapSequence()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-ne v3, v6, :cond_1a

    .line 2272
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2273
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V

    .line 2274
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2275
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;I)V

    goto/16 :goto_5

    .line 2276
    :cond_1a
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isTapingBeforeTimeout()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2277
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2278
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->invokeTimeOut()V

    goto/16 :goto_5

    .line 2297
    :cond_1b
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    if-eqz v4, :cond_1c

    .line 2298
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    int-to-short v5, v3

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->explictSymb(SB)S

    goto/16 :goto_7

    .line 2300
    :cond_1c
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    int-to-short v5, v3

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->explictSymb(SB)S

    goto/16 :goto_7

    .line 2334
    :cond_1d
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->displayHangul(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_8

    .line 2341
    :cond_1e
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 2343
    int-to-char v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2351
    :cond_1f
    :goto_a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_20

    .line 2352
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2355
    :cond_20
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 2356
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapShiftModeProc()V

    goto/16 :goto_9

    .line 2346
    :cond_21
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1f

    .line 2347
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 2367
    :cond_22
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    .line 2369
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2370
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->displayHangul(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_9

    .line 2372
    :cond_23
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v0, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_9

    .line 2383
    :cond_24
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    .line 2384
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_4

    .line 2387
    :cond_25
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->canUseT9(I)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v0

    if-lez v0, :cond_27

    if-eqz v1, :cond_27

    .line 2388
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->explictSymb(S)S

    .line 2389
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    .line 2390
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2391
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2392
    if-eqz v2, :cond_26

    .line 2393
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v0, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2395
    :cond_26
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v1

    invoke-virtual {p0, v0, v6, v6, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    goto/16 :goto_4

    .line 2397
    :cond_27
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleCharacter(I[I)V

    .line 2400
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2401
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto/16 :goto_4

    :cond_28
    move v3, p1

    goto/16 :goto_6

    :cond_29
    move v3, p1

    goto/16 :goto_7

    :cond_2a
    move v0, v7

    goto/16 :goto_2

    :cond_2b
    move-object v0, v4

    move-object v1, v4

    goto/16 :goto_1
.end method

.method private setAutoAppendOn(Z)V
    .locals 0
    .parameter "autoappend"

    .prologue
    .line 6404
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoAppendOn:Z

    .line 6405
    return-void
.end method

.method private setAutoCapsOn(Z)V
    .locals 0
    .parameter "autoCaps"

    .prologue
    .line 6355
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapsOn:Z

    .line 6356
    return-void
.end method

.method private setAutoCompletionOn(Z)V
    .locals 0
    .parameter "completion"

    .prologue
    .line 6376
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletionOn:Z

    .line 6377
    return-void
.end method

.method private setAutoLangOn(Z)V
    .locals 0
    .parameter "autoLang"

    .prologue
    .line 6362
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoLangOn:Z

    .line 6363
    return-void
.end method

.method private setAutoSpace(Z)V
    .locals 0
    .parameter "AutoSpace"

    .prologue
    .line 6439
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoSpace:Z

    .line 6440
    return-void
.end method

.method private setAutoSubstitutionOn(Z)V
    .locals 0
    .parameter "subtitution"

    .prologue
    .line 6411
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoSubstitutionOn:Z

    .line 6412
    return-void
.end method

.method private setCapsLockOn(Z)V
    .locals 0
    .parameter "CapsLock"

    .prologue
    .line 6446
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    .line 6447
    return-void
.end method

.method private setCustomExtractViewEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 6549
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCustomExtractViewEnabled:Z

    .line 6550
    return-void
.end method

.method private setDefaultInputmehtod()V
    .locals 2

    .prologue
    .line 8273
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getDefaultInputmethod()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8290
    :goto_0
    return-void

    .line 8275
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto :goto_0

    .line 8278
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto :goto_0

    .line 8281
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto :goto_0

    .line 8284
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto :goto_0

    .line 8287
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto :goto_0

    .line 8273
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setDefaultInputmode()V
    .locals 2

    .prologue
    .line 8254
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getDefaultInputmode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8270
    :goto_0
    :pswitch_0
    return-void

    .line 8264
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_0

    .line 8267
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_0

    .line 8254
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setFlagIsSoftkeyShown(Z)V
    .locals 0
    .parameter "isShown"

    .prologue
    .line 6538
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSoftkeyShown:Z

    .line 6539
    return-void
.end method

.method private setFlagIsVisibleWindow(Z)V
    .locals 0
    .parameter "isVisibleWindow"

    .prologue
    .line 6495
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsVisibleWindow:Z

    .line 6496
    return-void
.end method

.method private setInputLangOptMenuEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 6467
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLangOptMenuEnabled:Z

    .line 6468
    return-void
.end method

.method private setInputLanguage(I)V
    .locals 2
    .parameter "selectLanguage"

    .prologue
    .line 5951
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 5952
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputLanguage(II)S

    move-result v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    .line 5953
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 5954
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    if-eqz v0, :cond_2

    .line 5955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mbLangChangedForEditor:Z

    .line 5962
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5963
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 5965
    :cond_1
    return-void

    .line 5958
    :cond_2
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitInputLanguage(I)V

    goto :goto_0
.end method

.method private setInputMethodOptMenuEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 6460
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputMethodOptMenuEnabled:Z

    .line 6461
    return-void
.end method

.method private setInputType()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 8217
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 8251
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 8219
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_0

    .line 8222
    :pswitch_2
    const/4 v1, -0x1

    .line 8223
    .local v1, koreanIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v2

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 8224
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_1

    .line 8225
    move v1, v0

    .line 8223
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8229
    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 8230
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8232
    :cond_3
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    if-ne v3, v1, :cond_0

    .line 8233
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    goto :goto_0

    .line 8240
    .end local v0           #i:I
    .end local v1           #koreanIndex:I
    .end local v2           #n:I
    :pswitch_3
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v3, :cond_0

    .line 8241
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getMmsRecipientLastInputMode()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_0

    .line 8245
    :pswitch_4
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_0

    .line 8248
    :pswitch_5
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto :goto_0

    .line 8217
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setIsEditorAutoCompletion(Z)V
    .locals 0
    .parameter "completionEditor"

    .prologue
    .line 6383
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    .line 6384
    return-void
.end method

.method private setIsEditorMessage(Z)V
    .locals 0
    .parameter "messageEditor"

    .prologue
    .line 6390
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorMessage:Z

    .line 6391
    return-void
.end method

.method private setOnlyAbcMode(Z)V
    .locals 0
    .parameter "OnlyAbcMode"

    .prologue
    .line 6474
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOnlyAbcMode:Z

    .line 6475
    return-void
.end method

.method private setPasswordMode(Z)V
    .locals 0
    .parameter "PasswordMode"

    .prologue
    .line 6432
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    .line 6433
    return-void
.end method

.method private setPredictionOn(Z)V
    .locals 0
    .parameter "prediction"

    .prologue
    .line 6369
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPredictionOn:Z

    .line 6370
    return-void
.end method

.method private setRecaptureOn(Z)V
    .locals 0
    .parameter "recapture"

    .prologue
    .line 6425
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecaptureOn:Z

    .line 6426
    return-void
.end method

.method private setRegionalCorrectionOn(Z)V
    .locals 0
    .parameter "regionalCorrection"

    .prologue
    .line 6418
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRegionalCorrectionOn:Z

    .line 6419
    return-void
.end method

.method private setSearchEditorflag(Z)V
    .locals 0
    .parameter "search"

    .prologue
    .line 6524
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorTypeSearch:Z

    .line 6525
    return-void
.end method

.method private setSettingValues()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 5882
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsPredictionOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setNextWordPrediction(Z)V

    .line 5883
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoAppendOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setAutoAppend(Z)V

    .line 5884
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoSubstitutionOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setAutoSubstitution(Z)V

    .line 5885
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsRecaptureOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setRecapture(Z)V

    .line 5886
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCompletionOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setWordCompletion(Z)V

    .line 5887
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCompletionOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5888
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAxT9WordCompletionCount:S

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setWordCompletionPoint(S)V

    .line 5890
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsSpellCorrectionOn()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsRegionalCorrectionOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5891
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setCorrection(B)V

    .line 5901
    :goto_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrRecognitionTime:I

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrRecognitionTime(I)V

    .line 5902
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenColor:I

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrPenColor(I)V

    .line 5903
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrPenThickness:I

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrPenThickness(I)V

    .line 5904
    return-void

    .line 5892
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsSpellCorrectionOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5893
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setCorrection(B)V

    goto :goto_0

    .line 5894
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsRegionalCorrectionOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5895
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setCorrection(B)V

    goto :goto_0

    .line 5897
    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setCorrection(B)V

    goto :goto_0
.end method

.method private setShiftMode(Z)V
    .locals 0
    .parameter "shiftMode"

    .prologue
    .line 6453
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    .line 6454
    return-void
.end method

.method private setSilentMode(Z)V
    .locals 0
    .parameter "SilentMode"

    .prologue
    .line 6510
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSilentMode:Z

    .line 6511
    return-void
.end method

.method private setSoundOn(Z)V
    .locals 0
    .parameter "sound"

    .prologue
    .line 6348
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundOn:Z

    .line 6349
    return-void
.end method

.method private setSpellCorrectionOn(Z)V
    .locals 0
    .parameter "correction"

    .prologue
    .line 6397
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCorrectionOn:Z

    .line 6398
    return-void
.end method

.method private setVibrateOn(Z)V
    .locals 0
    .parameter "vibrate"

    .prologue
    .line 6341
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVibrateOn:Z

    .line 6342
    return-void
.end method

.method private settingHWKeyboardConnection(Z)V
    .locals 3
    .parameter "connect"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8747
    if-eqz p1, :cond_2

    .line 8752
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_1

    .line 8753
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8754
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 8756
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 8757
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputMode(I)V

    .line 8763
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyboardConnected:Z

    .line 8778
    :goto_0
    return-void

    .line 8769
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_3

    .line 8770
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputMode(I)V

    .line 8776
    :cond_3
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHWKeyboardConnected:Z

    goto :goto_0
.end method

.method private showDialogKeys(Landroid/inputmethodservice/Keyboard$Key;)V
    .locals 3
    .parameter

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getCurrentUmlautString(Landroid/inputmethodservice/Keyboard$Key;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1198
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1199
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1200
    const-class v2, Lcom/sec/android/inputmethod/axt9/AxT9UmlautPopup;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1201
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1202
    const-string v2, "umlautlist"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1203
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startActivity(Landroid/content/Intent;)V

    .line 1207
    :goto_0
    return-void

    .line 1205
    :cond_0
    iget-object v0, p1, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_0
.end method

.method private showInputMethodSelectOptionMenu()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 5337
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isPopupMenuShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5484
    :goto_0
    return-void

    .line 5343
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 5344
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->INPUTMETHOD:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    .line 5425
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodListSize()I

    move-result v1

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_4

    .line 5427
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    if-ne v0, v3, :cond_1

    move v1, v2

    .line 5434
    :goto_2
    if-ne v1, v5, :cond_2

    .line 5436
    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    goto :goto_0

    .line 5425
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 5440
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodListSize()I

    move-result v2

    move v3, v4

    :goto_3
    if-ge v3, v2, :cond_3

    .line 5441
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5442
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputMethodOptionList:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getImTypeString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    .line 5440
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    .line 5445
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5446
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 5447
    const v2, 0x7f0a0014

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5448
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputMethodOptionList:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$23;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5473
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0065

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5474
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    .line 5475
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onPopupDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5476
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 5477
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 5478
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 5479
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 5480
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 5481
    const/high16 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5482
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_4
    move v1, v5

    goto/16 :goto_2
.end method

.method private startListening(Z)V
    .locals 0
    .parameter "swipe"

    .prologue
    .line 8417
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->reallyStartListening(Z)V

    .line 8418
    return-void
.end method

.method private startTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;I)V
    .locals 3
    .parameter "run"
    .parameter "msec"

    .prologue
    .line 1815
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->setRunning(Z)V

    .line 1816
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1817
    return-void
.end method

.method private stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V
    .locals 1
    .parameter "run"

    .prologue
    .line 1805
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;->setRunning(Z)V

    .line 1806
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1807
    return-void
.end method

.method private switchToKeyboardView()V
    .locals 2

    .prologue
    .line 8388
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$28;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$28;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8396
    return-void
.end method

.method private switchToRecognitionStatusView()V
    .locals 3

    .prologue
    .line 8399
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConfigurationChanging:Z

    .line 8400
    .local v0, configChanged:Z
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sec/android/inputmethod/axt9/AxT9IME$29;

    invoke-direct {v2, p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$29;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8414
    return-void
.end method

.method static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    const/4 v2, 0x1

    .line 8687
    if-eqz p0, :cond_2

    .line 8688
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    .line 8695
    :goto_0
    return-object v0

    .line 8690
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v2, :cond_1

    .line 8691
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8693
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p0

    .line 8695
    goto :goto_0
.end method

.method private updateRingerMode()V
    .locals 2

    .prologue
    .line 5234
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 5235
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    .line 5237
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 5238
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSilentMode(Z)V

    .line 5240
    :cond_1
    return-void

    .line 5238
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public changeInputMode(I)V
    .locals 1
    .parameter "vInputMode"

    .prologue
    .line 6142
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_0

    .line 6143
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputMode(I)V

    .line 6145
    :cond_0
    return-void
.end method

.method public changeKDBNum(I)V
    .locals 2
    .parameter "inputMethodType"

    .prologue
    .line 6130
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_0

    .line 6131
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->changeKDBNum(II)V

    .line 6133
    :cond_0
    return-void
.end method

.method clearCurrentComposing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5627
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 5628
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 5629
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 5630
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5634
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5635
    return-void
.end method

.method public clearLastKey()V
    .locals 1

    .prologue
    .line 6560
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    .line 6561
    return-void
.end method

.method public commitAndInitComposing()V
    .locals 3

    .prologue
    .line 8047
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 8057
    :cond_0
    :goto_0
    return-void

    .line 8049
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 8050
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 8054
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 8055
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 8056
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    goto :goto_0
.end method

.method public commitCurrentComposing()V
    .locals 3

    .prologue
    .line 5618
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 5619
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 5620
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 5623
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5624
    return-void
.end method

.method public commitInputLanguage(I)V
    .locals 3
    .parameter

    .prologue
    .line 6100
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6102
    const-string v1, "select_language"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6103
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 6105
    if-nez v0, :cond_0

    .line 6106
    const-string v0, "AxT9IME"

    const-string v1, "commitInputLanguage(): can not write a value of the input language"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6108
    :cond_0
    return-void
.end method

.method public commitInputMethodType(I)V
    .locals 3
    .parameter

    .prologue
    .line 6115
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 6116
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 6117
    const-string v1, "inputmethod_type"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 6118
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 6119
    if-nez v0, :cond_0

    .line 6120
    const-string v0, "AxT9IME"

    const-string v1, "commitInputMethodType(): can not write a value of the inputmethod type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6122
    :cond_0
    return-void
.end method

.method protected convertIntArrToStringArr([I)[Ljava/lang/String;
    .locals 3
    .parameter "intArr"

    .prologue
    .line 7766
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/String;

    .line 7767
    .local v1, strings:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 7768
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 7769
    aget v2, p1, v0

    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLabelFromCode(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 7768
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7771
    :cond_0
    return-object v1
.end method

.method protected convertIntArrtoCharSequence([I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "intArr"

    .prologue
    .line 7754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7755
    .local v1, string:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 7756
    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 7757
    aget v2, p1, v0

    if-eqz v2, :cond_0

    .line 7758
    aget v2, p1, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7756
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7761
    :cond_1
    return-object v1
.end method

.method public doAction()V
    .locals 4

    .prologue
    .line 7258
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 7259
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 7260
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 7261
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    if-eqz v2, :cond_1

    .line 7262
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->actionId:I

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 7267
    :cond_0
    :goto_0
    return-void

    .line 7263
    :cond_1
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 7264
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v2, v2, 0xff

    invoke-interface {v1, v2}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    goto :goto_0
.end method

.method public doAction(I)V
    .locals 1
    .parameter "editorAction"

    .prologue
    .line 7274
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 7275
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 7276
    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->performEditorAction(I)Z

    .line 7278
    :cond_0
    return-void
.end method

.method public getAction()I
    .locals 2

    .prologue
    .line 7246
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 7247
    const/4 v1, 0x0

    .line 7248
    if-eqz v0, :cond_0

    .line 7249
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v1, 0x400000ff

    and-int/2addr v0, v1

    .line 7251
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getCurrentEditorAction()I
    .locals 1

    .prologue
    .line 6334
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAction:I

    return v0
.end method

.method protected getCurrentEnableInputMode()[I
    .locals 12

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7622
    const/16 v5, 0x8

    new-array v1, v5, [I

    fill-array-data v1, :array_0

    .line 7630
    .local v1, inputModes:[I
    array-length v3, v1

    .line 7631
    .local v3, validCount:I
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v5

    if-eq v5, v10, :cond_0

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v5

    if-ne v5, v8, :cond_3

    .line 7634
    :cond_0
    aput v7, v1, v7

    .line 7635
    aput v7, v1, v8

    .line 7636
    aput v7, v1, v9

    .line 7637
    const/4 v5, 0x3

    aput v7, v1, v5

    .line 7638
    const/4 v5, 0x4

    aput v7, v1, v5

    .line 7639
    aput v7, v1, v10

    .line 7640
    aput v7, v1, v11

    .line 7641
    sub-int/2addr v3, v11

    .line 7740
    :cond_1
    :goto_0
    new-array v4, v3, [I

    .line 7741
    .local v4, validInputModes:[I
    const/4 v2, 0x0

    .line 7742
    .local v2, j:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_8

    .line 7743
    aget v5, v1, v0

    if-eqz v5, :cond_2

    .line 7744
    aget v5, v1, v0

    aput v5, v4, v2

    .line 7745
    add-int/lit8 v2, v2, 0x1

    .line 7742
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 7642
    .end local v0           #i:I
    .end local v2           #j:I
    .end local v4           #validInputModes:[I
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 7643
    aput v7, v1, v7

    .line 7644
    aput v7, v1, v8

    .line 7645
    aput v7, v1, v9

    .line 7646
    const/4 v5, 0x3

    aput v7, v1, v5

    .line 7647
    const/4 v5, 0x4

    aput v7, v1, v5

    .line 7648
    aput v7, v1, v10

    .line 7649
    const/4 v5, 0x6

    sub-int/2addr v3, v5

    goto :goto_0

    .line 7650
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7651
    aput v7, v1, v7

    .line 7652
    aput v7, v1, v8

    .line 7653
    aput v7, v1, v9

    .line 7654
    const/4 v5, 0x3

    aput v7, v1, v5

    .line 7655
    const/4 v5, 0x4

    aput v7, v1, v5

    .line 7656
    aput v7, v1, v10

    .line 7657
    aput v7, v1, v11

    .line 7658
    sub-int/2addr v3, v11

    goto :goto_0

    .line 7659
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDateTime()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDate()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassTime()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 7660
    :cond_6
    aput v7, v1, v7

    .line 7661
    aput v7, v1, v8

    .line 7662
    aput v7, v1, v9

    .line 7663
    const/4 v5, 0x3

    aput v7, v1, v5

    .line 7664
    const/4 v5, 0x4

    aput v7, v1, v5

    .line 7665
    aput v7, v1, v10

    .line 7666
    aput v7, v1, v11

    .line 7667
    sub-int/2addr v3, v11

    goto :goto_0

    .line 7669
    :cond_7
    aput v7, v1, v7

    .line 7670
    aput v7, v1, v8

    .line 7671
    aput v7, v1, v9

    .line 7672
    const/4 v5, 0x3

    aput v7, v1, v5

    .line 7673
    const/4 v5, 0x4

    aput v7, v1, v5

    .line 7674
    sub-int/2addr v3, v10

    .line 7690
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v5

    if-ne v5, v9, :cond_1

    .line 7691
    const/4 v5, 0x6

    aput v7, v1, v5

    .line 7692
    sub-int/2addr v3, v8

    goto :goto_0

    .line 7749
    .restart local v0       #i:I
    .restart local v2       #j:I
    .restart local v4       #validInputModes:[I
    :cond_8
    return-object v4

    .line 7622
    nop

    :array_0
    .array-data 0x4
        0x79t 0xfft 0xfft 0xfft
        0x7bt 0xfft 0xfft 0xfft
        0x7at 0xfft 0xfft 0xfft
        0x78t 0xfft 0xfft 0xfft
        0x77t 0xfft 0xfft 0xfft
        0x84t 0xfft 0xfft 0xfft
        0x93t 0xfft 0xfft 0xfft
        0x92t 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public getCurrentInputLanguageCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 6017
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 6018
    const-string v0, "en"

    .line 6026
    :goto_0
    return-object v0

    .line 6020
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v1

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 6021
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v0, v3, :cond_1

    .line 6022
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6020
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 6026
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentInputLanguageID()S
    .locals 1

    .prologue
    .line 8072
    iget-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    return v0
.end method

.method public getCurrentInputLanguageString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x9

    .line 5972
    iget-short v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v3, v5, :cond_0

    .line 5973
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    if-ne v3, v5, :cond_0

    .line 5974
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v1

    .line 5975
    .local v1, id:I
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getStirngWithID(I)Ljava/lang/String;

    move-result-object v3

    .line 5985
    .end local v1           #id:I
    :goto_0
    return-object v3

    .line 5978
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v2

    .local v2, n:I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 5979
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v3

    iget-short v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    if-ne v3, v4, :cond_1

    .line 5980
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangStringId()I

    move-result v1

    .line 5981
    .restart local v1       #id:I
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getStirngWithID(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 5978
    .end local v1           #id:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5985
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getCurrentInputModeCode()I
    .locals 3

    .prologue
    .line 3519
    .line 3520
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    .line 3521
    packed-switch v0, :pswitch_data_0

    .line 3545
    const/4 v0, 0x0

    .line 3546
    const-string v1, "AxT9IME"

    const-string v2, "AxT9IME.getCurrentInputModeCode() --- currentInputMode error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3550
    :goto_0
    return v0

    .line 3533
    :pswitch_0
    const/16 v0, -0x7c

    .line 3534
    goto :goto_0

    .line 3536
    :pswitch_1
    const/16 v0, -0x6d

    .line 3537
    goto :goto_0

    .line 3539
    :pswitch_2
    const/16 v0, -0x6e

    .line 3540
    goto :goto_0

    .line 3521
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getCurrentKeyboardHeight()I
    .locals 1

    .prologue
    .line 8314
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentMultitapSequence()Ljava/lang/StringBuilder;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 5136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5137
    .local v2, MultitapSequence:Ljava/lang/StringBuilder;
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v5

    if-eq v5, v6, :cond_1

    .line 5151
    :cond_0
    return-object v2

    .line 5140
    :cond_1
    const/16 v5, 0x40

    new-array v1, v5, [S

    .line 5141
    .local v1, MTSBuff:[S
    new-array v3, v6, [S

    .line 5142
    .local v3, TotalS:[S
    new-array v0, v6, [B

    .line 5144
    .local v0, CurrentS:[B
    array-length v5, v1

    int-to-short v5, v5

    invoke-static {v1, v5, v3, v0}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9KDB_GetMultiTapSequence([SS[S[B)S

    .line 5147
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v5, 0x0

    aget-short v5, v3, v5

    if-ge v4, v5, :cond_0

    .line 5148
    aget-short v5, v1, v4

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5147
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public getCurrentNumberSymbolsPageNumber()I
    .locals 1

    .prologue
    .line 3745
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    return v0
.end method

.method public getCurrentPrivateImeOptionPrevNext()I
    .locals 3

    .prologue
    .line 8699
    const/4 v0, 0x0

    .line 8700
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 8701
    if-eqz v1, :cond_0

    .line 8702
    iget-object v1, v1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 8703
    if-eqz v1, :cond_0

    .line 8704
    const-string v2, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8705
    const/4 v0, 0x7

    .line 8714
    :cond_0
    :goto_0
    return v0

    .line 8706
    :cond_1
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8707
    const/16 v0, 0x8

    goto :goto_0

    .line 8708
    :cond_2
    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8709
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public getEditorClass()I
    .locals 3

    .prologue
    .line 8140
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 8141
    .local v1, info:Landroid/view/inputmethod/EditorInfo;
    const/4 v0, 0x0

    .line 8142
    .local v0, editorClass:I
    if-eqz v1, :cond_0

    .line 8143
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v2, 0xf

    .line 8145
    :cond_0
    return v0
.end method

.method public getEditorFlag()I
    .locals 2

    .prologue
    .line 8149
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 8150
    const/4 v1, 0x0

    .line 8151
    if-eqz v0, :cond_0

    .line 8152
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v1, 0xfff000

    and-int/2addr v0, v1

    .line 8154
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public getEditorVariation()I
    .locals 3

    .prologue
    .line 8158
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 8159
    .local v1, info:Landroid/view/inputmethod/EditorInfo;
    const/4 v0, 0x0

    .line 8160
    .local v0, editorVariation:I
    if-eqz v1, :cond_0

    .line 8161
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v2, 0xff0

    .line 8163
    :cond_0
    return v0
.end method

.method public getFlagIsAutoAppendOn()Z
    .locals 1

    .prologue
    .line 6407
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoAppendOn:Z

    return v0
.end method

.method public getFlagIsAutoCompletionOn()Z
    .locals 1

    .prologue
    .line 6379
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletionOn:Z

    return v0
.end method

.method public getFlagIsEditorAutoCompletion()Z
    .locals 1

    .prologue
    .line 6386
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    return v0
.end method

.method getFlagIsRecaptureOn()Z
    .locals 1

    .prologue
    .line 6428
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecaptureOn:Z

    return v0
.end method

.method public getFlagIsRegionalCorrectionOn()Z
    .locals 1

    .prologue
    .line 6421
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRegionalCorrectionOn:Z

    return v0
.end method

.method public getHwrService()Lcom/diotek/dhwr/eur/b2b/DioHWRService;
    .locals 1

    .prologue
    .line 8010
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    return-object v0
.end method

.method public getIsCapsLockOn()Z
    .locals 1

    .prologue
    .line 6449
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    return v0
.end method

.method public getIsEmoticonUsable()Z
    .locals 1

    .prologue
    .line 8024
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEmoticonUsable:Z

    return v0
.end method

.method public getIsInputMethodOptMenuEnabled()Z
    .locals 1

    .prologue
    .line 6463
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputMethodOptMenuEnabled:Z

    return v0
.end method

.method public getIsOnlyAbcMode()Z
    .locals 1

    .prologue
    .line 6477
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOnlyAbcMode:Z

    return v0
.end method

.method public getIsPasswordMode()Z
    .locals 1

    .prologue
    .line 6435
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    return v0
.end method

.method public getIsShiftMode()Z
    .locals 1

    .prologue
    .line 6456
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    return v0
.end method

.method public getLastEngCapsMode()Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;
    .locals 1

    .prologue
    .line 8079
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    return-object v0
.end method

.method public getMonthLable(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 8781
    .line 8782
    new-instance v0, Ljava/text/DateFormatSymbols;

    invoke-direct {v0}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 8783
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    .line 8784
    const/16 v1, -0x8d

    sub-int v1, p1, v1

    neg-int v1, v1

    .line 8785
    array-length v2, v0

    if-ge v1, v2, :cond_0

    if-ltz v1, :cond_0

    aget-object v2, v0, v1

    if-nez v2, :cond_2

    .line 8786
    :cond_0
    const/4 v0, 0x0

    .line 8794
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8795
    invoke-static {v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8797
    :cond_1
    return-object v0

    .line 8788
    :cond_2
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_3

    .line 8789
    aget-object v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8791
    :cond_3
    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public getMultiLineEditorflag()Z
    .locals 1

    .prologue
    .line 6520
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorTypeMultiLine:Z

    return v0
.end method

.method public getSelectLanguage()I
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 8341
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8342
    const-string v1, "select_language"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 8344
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [S

    .line 8345
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getDefaultLocalLanguge()S

    move-result v0

    aput-short v0, v2, v4

    .line 8347
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    :goto_0
    if-ge v4, v3, :cond_0

    .line 8348
    add-int/lit8 v5, v4, 0x1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    aput-short v0, v2, v5

    .line 8347
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 8351
    :cond_0
    aget-short v0, v2, v1

    return v0
.end method

.method public getSipMgr()Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;
    .locals 1

    .prologue
    .line 6556
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    return-object v0
.end method

.method public getSpecialActionflag()Z
    .locals 1

    .prologue
    .line 6534
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSpecialActionEditor:Z

    return v0
.end method

.method public getStirngWithID(I)Ljava/lang/String;
    .locals 1
    .parameter "id"

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleAddWord()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3810
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 3811
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 3813
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 3814
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->closing()V

    .line 3818
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3819
    const-class v1, Lcom/sec/android/inputmethod/axt9/AxT9AddWord;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3820
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3821
    const-string v1, "AddingWord"

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3824
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3825
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 3826
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 3827
    if-eqz v1, :cond_1

    .line 3828
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3830
    :cond_1
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->requestHideSelf(I)V

    .line 3832
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startActivity(Landroid/content/Intent;)V

    .line 3833
    return-void
.end method

.method public handleBackspace()V
    .locals 13

    .prologue
    const/4 v11, -0x1

    const/16 v10, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, ""

    .line 4258
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    if-eqz v0, :cond_1

    .line 4259
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;->candidates:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationDeleteCount(I)V

    .line 4261
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->revertVoiceInput()V

    .line 4432
    :cond_0
    :goto_0
    return-void

    .line 4265
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 4266
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 4268
    const-string v0, ""

    .line 4269
    const-string v0, ""

    .line 4270
    if-eqz v3, :cond_0

    .line 4271
    const/4 v0, 0x2

    invoke-interface {v3, v0, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4272
    const/4 v1, 0x3

    invoke-interface {v3, v1, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4273
    if-nez v0, :cond_2

    const-string v0, ""

    move-object v0, v9

    .line 4274
    :cond_2
    if-nez v1, :cond_3

    const-string v1, ""

    move-object v1, v9

    .line 4280
    :cond_3
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1c

    .line 4281
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 4286
    :goto_1
    if-eqz v0, :cond_1b

    if-eqz v1, :cond_1b

    .line 4287
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 4312
    :goto_2
    invoke-direct {p0, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isShouldSetShifted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    move-object v5, v1

    move v1, v0

    .line 4317
    :goto_3
    if-ge v2, v8, :cond_4

    .line 4318
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDeleteCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDeleteCount:I

    .line 4321
    :cond_4
    if-le v2, v8, :cond_b

    .line 4322
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearOneSymb()S

    move-result v0

    if-nez v0, :cond_9

    .line 4323
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    .line 4324
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4325
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4326
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v3, v0, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4327
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isMultitapMode()Z

    move-result v0

    if-nez v0, :cond_5

    .line 4328
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v2

    invoke-virtual {p0, v0, v8, v8, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 4418
    :cond_5
    :goto_4
    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v0, :cond_19

    .line 4419
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    .line 4426
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4429
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 4430
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    const/16 v1, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;I)V

    goto/16 :goto_0

    .line 4289
    :pswitch_0
    const-string v0, ""

    .line 4290
    const-string v0, ""

    move-object v0, v9

    move-object v1, v9

    .line 4291
    goto/16 :goto_2

    .line 4293
    :pswitch_1
    const-string v0, ""

    .line 4294
    const-string v0, ""

    move-object v0, v9

    move-object v1, v9

    .line 4295
    goto/16 :goto_2

    .line 4297
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_7

    .line 4298
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4300
    :cond_7
    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 4301
    goto/16 :goto_2

    .line 4303
    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_8

    .line 4304
    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4306
    :cond_8
    const/4 v5, 0x2

    invoke-virtual {v1, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    move-object v12, v1

    move-object v1, v0

    move-object v0, v12

    .line 4307
    goto/16 :goto_2

    .line 4331
    :cond_9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4332
    if-eqz v3, :cond_a

    .line 4333
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v3, v0, v8}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4335
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto :goto_4

    .line 4337
    :cond_b
    if-lez v2, :cond_e

    .line 4338
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4339
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearOneSymb()S

    .line 4340
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4341
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4342
    if-eqz v3, :cond_5

    .line 4343
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->displayHangul(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_4

    .line 4346
    :cond_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 4347
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4348
    if-eqz v3, :cond_d

    .line 4350
    const-string v0, ""

    invoke-direct {p0, v3, v9}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 4352
    :cond_d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 4353
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto/16 :goto_4

    .line 4355
    :cond_e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsRecaptureOn()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-virtual {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_14

    .line 4366
    if-eqz v3, :cond_10

    .line 4367
    const/16 v0, 0x40

    invoke-interface {v3, v0, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4371
    :goto_6
    invoke-virtual {v0, v10}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 4372
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 4373
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 4374
    if-ne v2, v11, :cond_11

    if-ne v4, v11, :cond_11

    move-object v2, v0

    .line 4380
    :goto_7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v8, :cond_f

    const-string v0, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    .line 4381
    :cond_f
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKeyDownUpHandle(I)V

    goto/16 :goto_4

    .line 4369
    :cond_10
    const-string v0, ""

    move-object v0, v9

    goto :goto_6

    .line 4377
    :cond_11
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    .line 4383
    :cond_12
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4384
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_13

    .line 4385
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v8

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4388
    :cond_13
    if-eqz v3, :cond_5

    .line 4389
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 4390
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    int-to-short v6, v6

    invoke-virtual {v0, v4, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->doRecapture(Ljava/lang/String;S)V

    .line 4391
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v4

    invoke-virtual {p0, v0, v8, v8, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 4392
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-interface {v3, v0, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 4393
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateComposerFromXT9()V

    .line 4394
    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_4

    .line 4398
    :cond_14
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 4399
    const-string v0, ""

    .line 4400
    if-eqz v3, :cond_1a

    .line 4401
    invoke-interface {v3, v8, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4403
    :goto_8
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    if-eqz v2, :cond_17

    if-eqz v0, :cond_17

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_17

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_17

    .line 4404
    iput-boolean v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    .line 4405
    iput-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    .line 4409
    :cond_15
    :goto_9
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDeleteCount:I

    const/16 v2, 0x14

    if-le v0, v2, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsRecaptureOn()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eqz v0, :cond_18

    .line 4410
    :cond_16
    if-eqz v3, :cond_5

    .line 4411
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLastWordDividerIndex()I

    move-result v0

    invoke-interface {v3, v0, v7}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto/16 :goto_4

    .line 4406
    :cond_17
    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_15

    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_15

    .line 4407
    iput-boolean v8, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    goto :goto_9

    .line 4414
    :cond_18
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKeyDownUpHandle(I)V

    goto/16 :goto_4

    .line 4420
    :cond_19
    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v0, :cond_6

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "\n"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 4423
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_5

    :cond_1a
    move-object v0, v9

    goto :goto_8

    :cond_1b
    move v1, v7

    move-object v5, v0

    goto/16 :goto_3

    :cond_1c
    move v4, v7

    goto/16 :goto_1

    .line 4287
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public handleCharacter(I[I)V
    .locals 12
    .parameter "primaryCode"
    .parameter "keyCodes"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x20

    const/4 v9, 0x1

    .line 4694
    sget-boolean v7, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v7, :cond_0

    .line 4695
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitVoiceInput()V

    .line 4698
    :cond_0
    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAfterVoiceInput:Z

    if-eqz v7, :cond_1

    .line 4700
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v7, v9}, Lcom/android/inputmethod/voice/VoiceInput;->incrementTextModificationInsertCount(I)V

    .line 4703
    :cond_1
    if-nez p2, :cond_2

    .line 4704
    new-array p2, v9, [I

    .end local p2
    aput p1, p2, v11

    .line 4713
    .restart local p2
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 4714
    .local v5, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v5, :cond_4

    .line 4851
    :cond_3
    :goto_0
    return-void

    .line 4716
    :cond_4
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isInMultiTap()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4717
    const/4 v6, 0x0

    .line 4718
    .local v6, index:I
    const/4 v2, 0x0

    .line 4721
    .local v2, codesLength:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    array-length v7, p2

    if-ge v4, v7, :cond_7

    .line 4722
    aget v7, p2, v4

    if-ne p1, v7, :cond_6

    .line 4723
    move v6, v4

    .line 4729
    :cond_5
    add-int/lit8 v2, v4, 0x1

    .line 4721
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 4724
    :cond_6
    aget v7, p2, v4

    const/4 v8, -0x1

    if-ne v7, v8, :cond_5

    .line 4726
    move v2, v4

    .line 4731
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 4732
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 4738
    :cond_8
    if-le v2, v9, :cond_e

    .line 4739
    if-nez v6, :cond_9

    .line 4740
    iget v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    sub-int v8, v2, v9

    aget v8, p2, v8

    if-ne v7, v8, :cond_b

    .line 4749
    :cond_9
    :goto_2
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4750
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    int-to-char v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4751
    if-eqz v5, :cond_a

    .line 4752
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v5, v7, v9}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4754
    :cond_a
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKey:I

    .line 4755
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 4756
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    const/16 v8, 0x3e8

    invoke-direct {p0, v7, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;I)V

    goto :goto_0

    .line 4743
    :cond_b
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    goto :goto_2

    .line 4759
    .end local v2           #codesLength:I
    .end local v4           #i:I
    .end local v6           #index:I
    :cond_c
    if-eq p1, v10, :cond_e

    .line 4762
    if-eq p1, v10, :cond_d

    .line 4763
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 4764
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 4765
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->noteWordDoneByActiveWord()V

    .line 4769
    :cond_d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 4772
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 4773
    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(I)I

    move-result p1

    .line 4776
    :cond_f
    if-eqz v5, :cond_13

    .line 4779
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_17

    .line 4780
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 4784
    :goto_3
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_10

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v7

    if-nez v7, :cond_11

    .line 4788
    :cond_10
    int-to-char v7, p1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v5, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 4793
    :cond_11
    int-to-char v7, p1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isSentenceSeparator(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 4796
    :cond_12
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4800
    :cond_13
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v7

    if-lez v7, :cond_14

    .line 4801
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v7

    if-nez v7, :cond_18

    .line 4802
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateUserSelWord()V

    .line 4803
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->EMPTY_LIST:Ljava/util/List;

    iput-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSuggestionListTest:Ljava/util/List;

    .line 4804
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v9, v9, v11}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 4805
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v7, :cond_14

    .line 4806
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 4816
    :cond_14
    :goto_4
    if-ne p1, v10, :cond_15

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsPredictionOn()Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v7

    if-nez v7, :cond_15

    .line 4817
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->doNextWordPrediction()V

    .line 4820
    :cond_15
    if-ne p1, v10, :cond_16

    .line 4821
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v3

    .line 4822
    .local v3, ei:Landroid/view/inputmethod/EditorInfo;
    if-eqz v3, :cond_16

    .line 4823
    iget v7, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v7, 0xf

    .line 4824
    .local v0, Editorclass:I
    iget v7, v3, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v1, v7, 0xff0

    .line 4825
    .local v1, Editorvar:I
    const/4 v7, 0x3

    if-ne v0, v7, :cond_19

    .line 4847
    .end local v0           #Editorclass:I
    .end local v1           #Editorvar:I
    .end local v3           #ei:Landroid/view/inputmethod/EditorInfo;
    :cond_16
    :goto_5
    if-ne p1, v10, :cond_3

    .line 4848
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V

    .line 4849
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    goto/16 :goto_0

    .line 4782
    :cond_17
    invoke-interface {v5}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto/16 :goto_3

    .line 4810
    :cond_18
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto :goto_4

    .line 4829
    .restart local v0       #Editorclass:I
    .restart local v1       #Editorvar:I
    .restart local v3       #ei:Landroid/view/inputmethod/EditorInfo;
    :cond_19
    iget-boolean v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoPeriodOn:Z

    if-eqz v7, :cond_16

    .line 4830
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->doDoubleSpace()V

    goto :goto_5
.end method

.method protected handleSettings()V
    .locals 1

    .prologue
    .line 3836
    const-class v0, Lcom/sec/android/inputmethod/axt9/AxT9Option;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleSettings(Ljava/lang/Class;)V

    .line 3837
    return-void
.end method

.method protected handleSettings(Ljava/lang/Class;)V
    .locals 2
    .parameter

    .prologue
    .line 3840
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleClose()V

    .line 3841
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3842
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3843
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3844
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startActivity(Landroid/content/Intent;)V

    .line 3845
    return-void
.end method

.method public hasAction()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7230
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 7232
    if-nez v0, :cond_0

    move v0, v3

    .line 7238
    :goto_0
    return v0

    .line 7233
    :cond_0
    iget-object v1, v0, Landroid/view/inputmethod/EditorInfo;->actionLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    and-int/lit16 v1, v1, 0xff

    if-eq v1, v4, :cond_2

    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, 0x2000

    and-int/2addr v1, v2

    if-nez v1, :cond_2

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public hideWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6229
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 6230
    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setFlagIsVisibleWindow(Z)V

    .line 6231
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLatestTextInputMode()V

    .line 6232
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    .line 6233
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    .line 6235
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6236
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 6237
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6247
    :cond_0
    :goto_0
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 6248
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 6251
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6252
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->dismiss()V

    .line 6255
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6256
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6258
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_3

    .line 6259
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 6263
    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_4

    .line 6265
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeActionPopup()V

    .line 6268
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->closing()V

    .line 6271
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendInputLanguage()V

    .line 6272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 6274
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConfigurationChanging:Z

    if-nez v0, :cond_8

    .line 6275
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAfterVoiceInput:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logInputEnded()V

    .line 6276
    :cond_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6277
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logKeyboardWarningDialogDismissed()V

    .line 6278
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceWarningDialog:Landroid/app/AlertDialog;

    .line 6281
    :cond_6
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    if-eqz v0, :cond_7

    .line 6282
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 6284
    :cond_7
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->hideWindow()V

    .line 6287
    :cond_8
    return-void

    .line 6238
    :cond_9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v0

    if-lez v0, :cond_a

    .line 6240
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList(Z)V

    goto/16 :goto_0

    .line 6241
    :cond_a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_0

    .line 6242
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_0

    .line 6243
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->dismissExpandPopup()V

    goto/16 :goto_0
.end method

.method public initSuggestionList()V
    .locals 1

    .prologue
    .line 5554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList(Z)V

    .line 5555
    return-void
.end method

.method public initSuggestionList(Z)V
    .locals 6
    .parameter "isShouldSuggestNull"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 5562
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSuggestionListTest:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-nez v1, :cond_1

    .line 5600
    :cond_0
    :goto_0
    return-void

    .line 5566
    :cond_1
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_4

    .line 5567
    if-eqz p1, :cond_2

    .line 5568
    invoke-virtual {p0, v5, v3, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 5570
    :cond_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v1, :cond_3

    .line 5571
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 5574
    :cond_3
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v1, :cond_0

    .line 5575
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 5576
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 5582
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v1, :cond_6

    .line 5583
    :cond_5
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->EMPTY_LIST:Ljava/util/List;

    iput-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSuggestionListTest:Ljava/util/List;

    .line 5584
    if-eqz p1, :cond_6

    .line 5585
    invoke-virtual {p0, v5, v3, v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 5589
    :cond_6
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v1, :cond_7

    .line 5590
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 5591
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5594
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    if-ne v1, v3, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v1, :cond_9

    :cond_8
    move v0, v3

    .line 5597
    .local v0, visible:Z
    :goto_1
    if-eqz p1, :cond_0

    .line 5598
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    goto :goto_0

    .end local v0           #visible:Z
    :cond_9
    move v0, v4

    .line 5594
    goto :goto_1
.end method

.method public initXT9Settings()V
    .locals 2

    .prologue
    .line 863
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletionOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setWordCompletionEnabled(Z)V

    .line 864
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPredictionOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setNextWordPredictionEnabled(Z)V

    .line 865
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCorrectionOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setCorrectionEnabled(Z)V

    .line 866
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoAppendOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setAutoAppendEnabled(Z)V

    .line 867
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoSubstitutionOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setAutoSubstitutionEnabled(Z)V

    .line 868
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRegionalCorrectionOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setRegionalCorrectionEnabled(Z)V

    .line 869
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecaptureOn:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setRecaptureEnabled(Z)V

    .line 870
    return-void
.end method

.method public invalidateInputView()V
    .locals 1

    .prologue
    .line 8851
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_0

    .line 8852
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 8854
    :cond_0
    return-void
.end method

.method isAlphaKey(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 1877
    invoke-static {p1}, Ljava/lang/Character;->isLetter(I)Z

    move-result v0

    return v0
.end method

.method public isAlphabetInputMode()Z
    .locals 1

    .prologue
    .line 1919
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAlphabetInputMode()Z

    move-result v0

    return v0
.end method

.method public isCandidateViewShown()Z
    .locals 1

    .prologue
    .line 8002
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassDate()Z
    .locals 2

    .prologue
    .line 8172
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassDateTime()Z
    .locals 2

    .prologue
    .line 8167
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassDecimalNumber()Z
    .locals 2

    .prologue
    .line 8190
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorFlag()I

    move-result v0

    const/16 v1, 0x2000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassFlagNullNumber()Z
    .locals 2

    .prologue
    .line 8206
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassDecimalNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassSignedNumber()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassSignedDecimalNumber()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassNumber()Z
    .locals 2

    .prologue
    .line 8186
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassPhone()Z
    .locals 2

    .prologue
    .line 8182
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassSignedDecimalNumber()Z
    .locals 2

    .prologue
    .line 8200
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorFlag()I

    move-result v0

    const/16 v1, 0x3000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassSignedNumber()Z
    .locals 2

    .prologue
    .line 8195
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorFlag()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassText()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8213
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClassTime()Z
    .locals 2

    .prologue
    .line 8177
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorVariation()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomExtractViewEnabled()Z
    .locals 1

    .prologue
    .line 6545
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCustomExtractViewEnabled:Z

    return v0
.end method

.method isEditorHasText(II)Z
    .locals 7
    .parameter "cursorStart"
    .parameter "cursorEnd"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1566
    const/4 v0, 0x0

    .line 1567
    .local v0, hasText:Z
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v4, v6

    .line 1585
    :goto_0
    return v4

    .line 1570
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1571
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_2

    move v4, v5

    .line 1572
    goto :goto_0

    .line 1574
    :cond_2
    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1575
    .local v3, textBeforeCursor:Ljava/lang/CharSequence;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    .line 1576
    const/4 v0, 0x1

    :goto_1
    move v4, v0

    .line 1585
    goto :goto_0

    .line 1578
    :cond_3
    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1579
    .local v2, textAfterCursor:Ljava/lang/CharSequence;
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 1580
    const/4 v0, 0x1

    goto :goto_1

    .line 1582
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isExpandCandidatesViewShown()Z
    .locals 1

    .prologue
    .line 8847
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->isExpandCandidatesViewShown()Z

    move-result v0

    return v0
.end method

.method public isHangulInputMode()Z
    .locals 1

    .prologue
    .line 1911
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v0

    return v0
.end method

.method public isLandscapeMode()Z
    .locals 1

    .prologue
    .line 8355
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    return v0
.end method

.method public isMultiLanguage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 8654
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isNextShiftInputMode()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4542
    const-string v2, ""

    .line 4543
    .local v2, lastOneChar:Ljava/lang/String;
    const-string v3, ""

    .line 4544
    .local v3, lastTwoChar:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4545
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    .line 4546
    invoke-interface {v1, v6, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2           #lastOneChar:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 4547
    .restart local v2       #lastOneChar:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    .end local v3           #lastTwoChar:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 4550
    .restart local v3       #lastTwoChar:Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    :cond_1
    move v4, v5

    .line 4565
    :goto_0
    return v4

    .line 4555
    :cond_2
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    .line 4556
    goto :goto_0

    .line 4559
    :cond_3
    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v6

    .line 4560
    goto :goto_0

    .line 4563
    :cond_4
    invoke-direct {p0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isShouldSetShifted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .local v0, changeShiftRequested:Z
    move v4, v0

    .line 4565
    goto :goto_0
.end method

.method public isNonAlphabetLanguage()Z
    .locals 1

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isNonAlphabetLanguage()Z

    move-result v0

    return v0
.end method

.method public isPopupMenuShown()Z
    .locals 1

    .prologue
    .line 6491
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupMenuShown:Z

    return v0
.end method

.method public isRecognizing()Z
    .locals 1

    .prologue
    .line 8801
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    return v0
.end method

.method public isSpaceLanguageChangeEnable()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8658
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isMultiLanguage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 8659
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 8660
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 8683
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 8663
    goto :goto_0

    .line 8666
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8667
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    move v0, v3

    .line 8668
    goto :goto_0

    .line 8669
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    .line 8670
    goto :goto_0

    :cond_3
    move v0, v2

    .line 8672
    goto :goto_0

    .line 8675
    :cond_4
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 8676
    goto :goto_0

    :cond_5
    move v0, v2

    .line 8678
    goto :goto_0

    :cond_6
    move v0, v2

    .line 8683
    goto :goto_0
.end method

.method public isVoiceInputEnable()Z
    .locals 2

    .prologue
    .line 8363
    const/4 v0, 0x0

    .line 8365
    .local v0, isEnableLang:Z
    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    packed-switch v1, :pswitch_data_0

    .line 8375
    :pswitch_0
    const/4 v0, 0x0

    .line 8378
    :goto_0
    sget-boolean v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 8372
    :pswitch_1
    const/4 v0, 0x1

    .line 8373
    goto :goto_0

    .line 8378
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 8365
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isXt9SettingEnabled()Z
    .locals 1

    .prologue
    .line 8121
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    return v0
.end method

.method public onCancelVoice()V
    .locals 1

    .prologue
    .line 8382
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    if-eqz v0, :cond_0

    .line 8383
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->switchToKeyboardView()V

    .line 8385
    :cond_0
    return-void
.end method

.method public onChange(I)V
    .locals 0
    .parameter "primaryCode"

    .prologue
    .line 5168
    return-void
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 1
    .parameter "outInsets"

    .prologue
    .line 7287
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 7288
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isFullscreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7289
    iget v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v0, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    .line 7291
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11
    .parameter "newConfig"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 7488
    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_a

    move v6, v9

    :goto_0
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    .line 7490
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v6, :cond_0

    .line 7491
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->dismissExpandPopup()V

    .line 7493
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-nez v6, :cond_b

    move v6, v8

    :goto_1
    if-lez v6, :cond_c

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v6

    if-nez v6, :cond_c

    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v6, :cond_c

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRecognizing()Z

    move-result v6

    if-nez v6, :cond_c

    move v4, v9

    .line 7499
    .local v4, updateSuggestion:Z
    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mChangeConfigRequested:Z

    .line 7501
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 7505
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    .line 7506
    .local v2, inputMode:I
    if-eqz v2, :cond_1

    if-ne v2, v9, :cond_2

    .line 7507
    :cond_1
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v6

    if-eqz v6, :cond_d

    move v0, v8

    .line 7509
    .local v0, currentInputMode:I
    :goto_3
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v6, v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7513
    .end local v0           #currentInputMode:I
    :cond_2
    if-eqz v4, :cond_f

    .line 7514
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggestion()Ljava/util/List;

    move-result-object v3

    .line 7515
    .local v3, suggestion:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_5

    .line 7516
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v5

    .line 7517
    .local v5, wordIndex:B
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7518
    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7519
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 7520
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_3

    .line 7521
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v1, v6, v9}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 7524
    :cond_3
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 7525
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 7528
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 7530
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 7542
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #suggestion:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v5           #wordIndex:B
    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 7544
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 7547
    :cond_6
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 7548
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v6, v10}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7549
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->dismiss()V

    .line 7550
    invoke-virtual {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 7554
    :cond_7
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 7555
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    invoke-virtual {v6, v10}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7556
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioPopup:Lcom/sec/android/inputmethod/axt9/widget/DioPopup;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/widget/DioPopup;->dismiss()V

    .line 7557
    invoke-virtual {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 7558
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->INPUTMETHOD:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    if-ne v6, v7, :cond_10

    .line 7559
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showInputMethodSelectOptionMenu()V

    .line 7565
    :cond_8
    :goto_5
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    if-eqz v6, :cond_9

    .line 7566
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->switchToRecognitionStatusView()V

    .line 7568
    :cond_9
    return-void

    .end local v2           #inputMode:I
    .end local v4           #updateSuggestion:Z
    :cond_a
    move v6, v8

    .line 7488
    goto/16 :goto_0

    .line 7493
    :cond_b
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v6

    goto/16 :goto_1

    :cond_c
    move v4, v8

    goto/16 :goto_2

    .restart local v2       #inputMode:I
    .restart local v4       #updateSuggestion:Z
    :cond_d
    move v0, v9

    .line 7507
    goto/16 :goto_3

    .line 7532
    .restart local v1       #ic:Landroid/view/inputmethod/InputConnection;
    .restart local v3       #suggestion:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .restart local v5       #wordIndex:B
    :cond_e
    invoke-virtual {p0, v3, v9, v9, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 7533
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v6

    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    goto :goto_4

    .line 7537
    .end local v1           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v3           #suggestion:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v5           #wordIndex:B
    :cond_f
    invoke-virtual {p0, v10, v9, v9, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 7538
    invoke-virtual {p0, v8}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    goto :goto_4

    .line 7560
    :cond_10
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    sget-object v7, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->LANGUAGE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    if-ne v6, v7, :cond_8

    .line 7561
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showInputLanguageSelectOptionMenu()V

    goto :goto_5
.end method

.method public onConfigureWindow(Landroid/view/Window;ZZ)V
    .locals 0
    .parameter "win"
    .parameter "isFullscreen"
    .parameter "isCandidatesOnly"

    .prologue
    .line 7574
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onConfigureWindow(Landroid/view/Window;ZZ)V

    .line 7575
    return-void
.end method

.method public onCreate()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 693
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 705
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 706
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->LANGUAGE_NUM:I

    .line 707
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->LANGUAGE_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    .line 708
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->LANGUAGE_NUM:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageCodeList:[Ljava/lang/String;

    .line 709
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Language;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    .line 711
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 712
    if-eqz v0, :cond_0

    .line 713
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 715
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 716
    if-le v0, v1, :cond_1

    .line 717
    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    .line 718
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    .line 719
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    .line 728
    :cond_0
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOldLocale:Ljava/util/Locale;

    .line 730
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPortInputViewHeight:I

    .line 731
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLandInputViewHeight:I

    .line 733
    invoke-static {}, Lcom/sec/android/inputmethod/axt9/AxT9Config;->getInstance()Lcom/sec/android/inputmethod/axt9/AxT9Config;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConf:Lcom/sec/android/inputmethod/axt9/AxT9Config;

    .line 734
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-direct {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    .line 735
    new-instance v0, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    .line 736
    new-instance v0, Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-direct {v0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    .line 737
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHwrService:Lcom/diotek/dhwr/eur/b2b/DioHWRService;

    invoke-virtual {v0, p0}, Lcom/diotek/dhwr/eur/b2b/DioHWRService;->setContext(Landroid/content/Context;)V

    .line 738
    iput-object p0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    .line 740
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSounds()V

    .line 765
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodListSize()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputMethodOptionList:[Ljava/lang/CharSequence;

    .line 767
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodListSize()I

    move-result v1

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_2

    .line 768
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 769
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputMethodOptionList:[Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getImTypeString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v2

    .line 767
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 721
    :cond_1
    sput v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_HEIGHT:I

    .line 722
    sput v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->WINDOW_WIDTH:I

    .line 723
    iput-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    goto/16 :goto_0

    .line 772
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f09

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVibrateDuration:J

    .line 774
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->activityresult:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.sec.android.inputmethod.axt9.AxT9IME"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 776
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioDictConfigReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.diotek.diodict.lang"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 778
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 781
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 783
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mScreenLockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 784
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 785
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCursorHandleReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.sec.android.inputmethod.axt9.EDIT_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 786
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHeightRequestReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "RequestAxT9InfoAllHeight"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 787
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.mms.LANGUAGE_ACTION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 788
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCommitAlternative:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "commit_char"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 789
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConnectBTKeyboard:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 791
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mShowinputReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "ShowInputMethodMenu"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 793
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSettingValues()V

    .line 794
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSettingLanguage()V

    .line 797
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v0

    new-array v1, v0, [S

    .line 800
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v2

    move v3, v4

    :goto_2
    if-ge v3, v2, :cond_3

    .line 801
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    aput-short v0, v1, v3

    .line 800
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 804
    :cond_3
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    aget-short v0, v1, v0

    iput-short v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    .line 806
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    if-nez v0, :cond_5

    move v0, v5

    :goto_3
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoLangOn(Z)V

    .line 808
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_4

    .line 809
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initXT9Settings()V

    .line 810
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-short v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initCore(S)V

    .line 811
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAlreadyInitFlag()V

    .line 812
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputMode(I)V

    .line 815
    :cond_4
    sput-boolean v5, Lcom/sec/android/inputmethod/axt9/AxT9IME;->IS_CORE_INIT:Z

    .line 817
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$7;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 837
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 838
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 840
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v5

    :goto_4
    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    .line 845
    new-instance v0, Lcom/android/inputmethod/voice/VoiceInput;

    invoke-direct {v0, p0, p0}, Lcom/android/inputmethod/voice/VoiceInput;-><init>(Landroid/content/Context;Lcom/android/inputmethod/voice/VoiceInput$UiListener;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    .line 846
    new-instance v0, Lcom/sec/android/inputmethod/axt9/Hints;

    new-instance v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;

    invoke-direct {v1, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$8;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/inputmethod/axt9/Hints;-><init>(Landroid/content/Context;Lcom/sec/android/inputmethod/axt9/Hints$Display;)V

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHints:Lcom/sec/android/inputmethod/axt9/Hints;

    .line 857
    return-void

    :cond_5
    move v0, v4

    .line 806
    goto :goto_3

    :cond_6
    move v0, v4

    .line 840
    goto :goto_4
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 886
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->freeVariables()V

    .line 888
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 890
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    .line 891
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setService(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    .line 892
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->initViews()V

    .line 903
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 910
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->freeVariables()V

    .line 912
    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    .line 914
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030022

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    .line 915
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputView(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;)V

    .line 918
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setCurrentRequestedKeyboardNull(I)V

    .line 919
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, p0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOnKeyboardActionListener(Lcom/sec/android/inputmethod/axt9/AxT9KeyboardView$OnKeyboardActionListener;)V

    .line 921
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v0, :cond_1

    .line 923
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    .line 926
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 6292
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6293
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->activityresult:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6294
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDioDictConfigReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6297
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlarmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6299
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mScreenLockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6300
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mScreenUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6302
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCursorHandleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6303
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHeightRequestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6304
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6305
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCommitAlternative:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6306
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConnectBTKeyboard:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6308
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mShowinputReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6320
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v0, :cond_0

    .line 6321
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->destroy()V

    .line 6323
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_1

    .line 6324
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 6326
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_2

    .line 6327
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->destroy()V

    .line 6330
    :cond_2
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 6331
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 6
    .parameter "completions"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 933
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isRecognizing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 934
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 935
    if-nez p1, :cond_2

    .line 936
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 937
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 954
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v3, v5

    .line 937
    goto :goto_0

    .line 942
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .local v2, stringList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-eqz p1, :cond_4

    array-length v3, p1

    :goto_3
    if-ge v1, v3, :cond_5

    .line 944
    aget-object v0, p1, v1

    .line 945
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 946
    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 943
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_4
    move v3, v5

    goto :goto_3

    .line 949
    :cond_5
    invoke-virtual {p0, v2, v4, v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 950
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_6

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v3, :cond_7

    move v3, v4

    :goto_4
    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    goto :goto_1

    :cond_7
    move v3, v5

    goto :goto_4
.end method

.method public onDownUpKeyEvent(I)V
    .locals 16
    .parameter "keyEventCode"

    .prologue
    .line 585
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 586
    .local v1, eventTime:J
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v15

    .line 588
    .local v15, ic:Landroid/view/inputmethod/InputConnection;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x6

    move-wide v3, v1

    move/from16 v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 592
    .local v0, downKeyEvent:Landroid/view/KeyEvent;
    new-instance v3, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x6

    move-wide v6, v1

    move/from16 v9, p1

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 596
    .local v3, upKeyEvent:Landroid/view/KeyEvent;
    if-eqz v15, :cond_0

    .line 597
    invoke-interface {v15, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 598
    invoke-interface {v15, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 602
    :cond_0
    return-void
.end method

.method public onFinishInput()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 960
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 962
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mConfigurationChanging:Z

    if-nez v0, :cond_1

    .line 963
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAfterVoiceInput:Z

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->flushAllTextModificationCounters()V

    .line 965
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->logInputEnded()V

    .line 967
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->flushLogs()V

    .line 968
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInput:Lcom/android/inputmethod/voice/VoiceInput;

    invoke-virtual {v0}, Lcom/android/inputmethod/voice/VoiceInput;->cancel()V

    .line 983
    :cond_1
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 984
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    .line 988
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    .line 989
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 990
    invoke-virtual {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList(Z)V

    .line 998
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_2

    .line 999
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->UNKNOWN:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 1000
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setDefaultTextInputMode()V

    .line 1008
    :cond_2
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    .line 1009
    iput-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    .line 1010
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 2
    .parameter "finishingInput"

    .prologue
    .line 1018
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 1020
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setMmsRecipientLastInputMode(I)V

    .line 1024
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_1

    .line 1027
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1033
    :cond_1
    return-void
.end method

.method public onKey(I[I)V
    .locals 11
    .parameter
    .parameter

    .prologue
    .line 2569
    .line 2570
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 2571
    sget-object v1, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 2574
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorClass()I

    move-result v2

    .line 2575
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getEditorFlag()I

    move-result v3

    .line 2576
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 2577
    if-nez v4, :cond_1

    .line 3476
    :cond_0
    :goto_0
    return-void

    .line 2581
    :cond_1
    sget-boolean v5, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v5, :cond_2

    .line 2582
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitVoiceInput()V

    .line 2585
    :cond_2
    const/16 v5, -0xff

    if-eq p1, v5, :cond_0

    .line 2589
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_4

    .line 2590
    const/16 v5, 0x20

    if-eq p1, v5, :cond_3

    const/16 v5, 0xa

    if-eq p1, v5, :cond_3

    const/4 v5, -0x5

    if-ne p1, v5, :cond_4

    .line 2593
    :cond_3
    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    if-eqz v5, :cond_4

    .line 2594
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 2595
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v5, :cond_4

    .line 2596
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 2602
    :cond_4
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2603
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isInMultiTap()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2604
    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 2605
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 2609
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2610
    const/4 v7, -0x5

    if-ne p1, v7, :cond_6

    iget-wide v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKeyTime:J

    const-wide/16 v9, 0x12c

    add-long/2addr v7, v9

    cmp-long v7, v5, v7

    if-lez v7, :cond_7

    .line 2612
    :cond_6
    const/4 v7, 0x0

    iput v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDeleteCount:I

    .line 2614
    :cond_7
    iput-wide v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastKeyTime:J

    .line 2616
    sparse-switch p1, :sswitch_data_0

    .line 3462
    :cond_8
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendKey(I[I)V

    .line 3467
    :cond_9
    :goto_2
    :sswitch_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 3468
    :cond_a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v0

    if-eqz v0, :cond_b

    .line 3469
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-nez v0, :cond_66

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 3473
    :cond_b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isKeyLongPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3474
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setKeyLongPressed(Z)V

    goto/16 :goto_0

    .line 2619
    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 2620
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2621
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 2623
    :cond_c
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v0, :cond_9

    .line 2624
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startListening(Z)V

    goto :goto_2

    .line 2632
    :sswitch_2
    if-eqz v4, :cond_9

    .line 2633
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2635
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2636
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2637
    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2641
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_2

    .line 2645
    :sswitch_3
    if-eqz v4, :cond_9

    .line 2646
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2648
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2649
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2650
    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2651
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 2655
    :sswitch_4
    if-eqz v4, :cond_9

    .line 2656
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2658
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2659
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2660
    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2661
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 2665
    :sswitch_5
    if-eqz v4, :cond_9

    .line 2666
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2668
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2669
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2670
    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2671
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 2675
    :sswitch_6
    if-eqz v4, :cond_9

    .line 2676
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2678
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2679
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2680
    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2681
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 2685
    :sswitch_7
    if-eqz v4, :cond_9

    .line 2686
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2688
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2689
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2690
    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2691
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 2695
    :sswitch_8
    if-eqz v4, :cond_9

    .line 2696
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2698
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2699
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2700
    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2701
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 2705
    :sswitch_9
    if-eqz v4, :cond_9

    .line 2706
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2708
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2709
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2710
    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2711
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 2715
    :sswitch_a
    if-eqz v4, :cond_9

    .line 2716
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2718
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2719
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2720
    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2721
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 2725
    :sswitch_b
    if-eqz v4, :cond_9

    .line 2726
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2728
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2729
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2730
    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2731
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 2735
    :sswitch_c
    if-eqz v4, :cond_9

    .line 2736
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2738
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2739
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2740
    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2741
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 2745
    :sswitch_d
    if-eqz v4, :cond_9

    .line 2746
    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMonthLable(I)Ljava/lang/String;

    move-result-object v0

    .line 2748
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 2749
    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-interface {v4, v1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 2750
    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 2751
    invoke-interface {v4}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto/16 :goto_2

    .line 2764
    :sswitch_e
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2765
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    goto/16 :goto_2

    .line 2767
    :cond_d
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 2768
    const/4 v1, -0x1

    .line 2770
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2771
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 2773
    :cond_e
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    :goto_4
    if-ge v2, v3, :cond_6a

    .line 2774
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p2}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 2775
    add-int/lit8 v0, v2, 0x1

    .line 2780
    :goto_5
    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    .line 2781
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 2782
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 2784
    :cond_f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 2785
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_10

    .line 2786
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 2793
    :cond_10
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_12

    .line 2797
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 2801
    :goto_6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    goto/16 :goto_2

    .line 2773
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 2799
    :cond_12
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_6

    .line 2805
    :sswitch_f
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2806
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto/16 :goto_2

    .line 2808
    :cond_13
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 2809
    const/4 v1, -0x1

    .line 2811
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2812
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 2814
    :cond_14
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    :goto_7
    if-ge v2, v3, :cond_69

    .line 2815
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p2}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2816
    add-int/lit8 v0, v2, 0x1

    .line 2821
    :goto_8
    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    .line 2822
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 2823
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 2825
    :cond_15
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 2826
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_16

    .line 2827
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 2834
    :cond_16
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2838
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 2842
    :goto_9
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto/16 :goto_2

    .line 2814
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2840
    :cond_18
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_9

    .line 2846
    :sswitch_10
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 2847
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_2

    .line 2849
    :cond_19
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 2850
    const/4 v1, -0x1

    .line 2852
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2853
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 2855
    :cond_1a
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    :goto_a
    if-ge v2, v3, :cond_68

    .line 2856
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p2}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 2857
    add-int/lit8 v0, v2, 0x1

    .line 2862
    :goto_b
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1b

    .line 2863
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 2864
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 2866
    :cond_1b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 2867
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_1c

    .line 2868
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 2875
    :cond_1c
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v0, :cond_1e

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 2879
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 2883
    :goto_c
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_2

    .line 2855
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 2881
    :cond_1e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_c

    .line 2887
    :sswitch_11
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 2888
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1f

    .line 2889
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 2891
    :cond_1f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 2892
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 2894
    :cond_20
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 2895
    const/4 v0, -0x1

    .line 2897
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    :goto_d
    if-ge v2, v3, :cond_21

    .line 2898
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p2}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 2899
    add-int/lit8 v0, v2, 0x1

    .line 2904
    :cond_21
    const/4 v1, -0x1

    if-eq v0, v1, :cond_22

    .line 2905
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 2906
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 2908
    :cond_22
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 2909
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 2910
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_23

    .line 2911
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 2913
    :cond_23
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 2914
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_2

    .line 2897
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2918
    :sswitch_12
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 2919
    const/4 v1, -0x1

    .line 2921
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v2

    if-eqz v2, :cond_25

    .line 2922
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 2924
    :cond_25
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    :goto_e
    if-ge v2, v3, :cond_67

    .line 2925
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p2}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 2926
    add-int/lit8 v0, v2, 0x1

    .line 2931
    :goto_f
    const/4 v1, -0x1

    if-eq v0, v1, :cond_26

    .line 2932
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 2933
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 2935
    :cond_26
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 2936
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_27

    .line 2937
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 2944
    :cond_27
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_29

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v0, :cond_29

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_29

    .line 2948
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 2953
    :goto_10
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    goto/16 :goto_2

    .line 2924
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2950
    :cond_29
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_10

    .line 2956
    :sswitch_13
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 2957
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_2a

    .line 2958
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 2960
    :cond_2a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 2961
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 2965
    :cond_2b
    :goto_11
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 2967
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v0, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2968
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2c

    .line 2969
    const/4 v0, 0x0

    .line 2972
    :cond_2c
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    iget-object v1, v1, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2974
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2d

    .line 2975
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 2976
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 2979
    :cond_2d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2980
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 2981
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 2982
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_2e

    .line 2983
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 2985
    :cond_2e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 2986
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_2

    .line 2962
    :cond_2f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2963
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    goto :goto_11

    .line 2989
    :cond_30
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 2990
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_31

    .line 2991
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 2998
    :cond_31
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_32

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_32

    .line 3002
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3007
    :goto_12
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    if-eqz v0, :cond_34

    .line 3008
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputLanguageId()S

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_33

    .line 3009
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 3016
    :goto_13
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendInputLanguage()V

    goto/16 :goto_2

    .line 3004
    :cond_32
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_12

    .line 3011
    :cond_33
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreForcedCapslock()V

    goto :goto_13

    .line 3014
    :cond_34
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    goto :goto_13

    .line 3020
    :sswitch_14
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 3021
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_35

    .line 3022
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3024
    :cond_35
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 3025
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 3029
    :cond_36
    :goto_14
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 3031
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3032
    if-gez v0, :cond_37

    .line 3033
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 3036
    :cond_37
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3038
    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    .line 3039
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 3040
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    .line 3042
    :cond_38
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3043
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_39

    .line 3044
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3051
    :cond_39
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 3052
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3053
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3054
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_3a

    .line 3055
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3057
    :cond_3a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    .line 3058
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_2

    .line 3026
    :cond_3b
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 3027
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    goto :goto_14

    .line 3061
    :cond_3c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3062
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_3d

    .line 3063
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3070
    :cond_3d
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAutoComplete:Z

    if-nez v0, :cond_3e

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPasswordMode:Z

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_3e

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3074
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3079
    :goto_15
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    if-eqz v0, :cond_40

    .line 3080
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputLanguageId()S

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3f

    .line 3081
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 3088
    :goto_16
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendInputLanguage()V

    goto/16 :goto_2

    .line 3076
    :cond_3e
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_15

    .line 3083
    :cond_3f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreForcedCapslock()V

    goto :goto_16

    .line 3086
    :cond_40
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    goto :goto_16

    .line 3092
    :sswitch_15
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showInputLanguageSelectOptionMenu()V

    goto/16 :goto_2

    .line 3097
    :sswitch_16
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 3098
    if-eqz p2, :cond_9

    .line 3099
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    if-nez v0, :cond_9

    .line 3100
    invoke-virtual {p2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_2

    .line 3110
    :sswitch_17
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleClose()V

    goto/16 :goto_2

    .line 3124
    :sswitch_18
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v0

    .line 3125
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_42

    .line 3126
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_41

    .line 3127
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_9

    .line 3128
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->popupMiniKeyboard()Z

    goto/16 :goto_2

    .line 3131
    :cond_41
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleModeChange([IZ)V

    goto/16 :goto_2

    .line 3136
    :cond_42
    :sswitch_19
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3137
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_43

    .line 3138
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 3140
    :cond_43
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isEditorHasText(II)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEditorHasText:Z

    .line 3141
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3142
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3143
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    goto/16 :goto_2

    .line 3148
    :sswitch_1a
    const v0, 0x1020020

    invoke-interface {v4, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 3150
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_9

    .line 3151
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_2

    .line 3155
    :sswitch_1b
    const v0, 0x1020021

    invoke-interface {v4, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 3157
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_9

    .line 3158
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_2

    .line 3162
    :sswitch_1c
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/ClipboardManager;

    .line 3163
    invoke-virtual {p2}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 3164
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_9

    .line 3165
    const v0, 0x1020022

    invoke-interface {v4, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 3167
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_9

    .line 3168
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_2

    .line 3173
    :sswitch_1d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 3174
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3176
    :cond_44
    const v0, 0x1020029

    invoke-interface {v4, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3177
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getpreInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3178
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getpreInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    goto/16 :goto_2

    .line 3182
    :sswitch_1e
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    if-eqz v0, :cond_45

    .line 3183
    const v0, 0x1020029

    invoke-interface {v4, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    .line 3189
    :goto_17
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_9

    .line 3190
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_2

    .line 3186
    :cond_45
    const v0, 0x1020028

    invoke-interface {v4, v0}, Landroid/view/inputmethod/InputConnection;->performContextMenuAction(I)Z

    .line 3187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsStartSelectText:Z

    goto :goto_17

    .line 3195
    :sswitch_1f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3196
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_46

    .line 3197
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 3199
    :cond_46
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onDownUpKeyEvent(I)V

    goto/16 :goto_2

    .line 3202
    :sswitch_20
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3203
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_47

    .line 3204
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 3206
    :cond_47
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onDownUpKeyEvent(I)V

    goto/16 :goto_2

    .line 3209
    :sswitch_21
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3210
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_48

    .line 3211
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 3213
    :cond_48
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onDownUpKeyEvent(I)V

    goto/16 :goto_2

    .line 3216
    :sswitch_22
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3217
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_49

    .line 3218
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->closeCandidateView()V

    .line 3220
    :cond_49
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onDownUpKeyEvent(I)V

    goto/16 :goto_2

    .line 3225
    :sswitch_23
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    .line 3226
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleSettings()V

    goto/16 :goto_2

    .line 3243
    :sswitch_24
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsInputMethodOptMenuEnabled()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsOnlyAbcMode()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassNumber()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isClassPhone()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 3250
    :cond_4a
    const/16 v0, 0x30

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/16 v3, 0x30

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleCharacter(I[I)V

    goto/16 :goto_2

    .line 3252
    :cond_4b
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleT9OnOff()V

    goto/16 :goto_2

    .line 3273
    :sswitch_25
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_4c

    .line 3274
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isStartedHwrTimer()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3275
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->finishRecognitionAndCommit()V

    .line 3281
    :cond_4c
    :goto_18
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4d

    .line 3282
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 3284
    :cond_4d
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleBackspace()V

    goto/16 :goto_2

    .line 3276
    :cond_4e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 3277
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->finishRecognition()V

    goto :goto_18

    .line 3287
    :sswitch_26
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputLanguageId()S

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9

    .line 3290
    :cond_4f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 3291
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleShiftkey()V

    goto/16 :goto_2

    .line 3293
    :cond_50
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v0, :cond_51

    .line 3294
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_2

    .line 3296
    :cond_51
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto/16 :goto_2

    .line 3309
    :sswitch_27
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3310
    :cond_52
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleClose()V

    goto/16 :goto_2

    .line 3315
    :sswitch_28
    const/16 v0, -0x68

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleMoveSymbolPage(I)V

    goto/16 :goto_2

    .line 3320
    :sswitch_29
    const/16 v0, -0x69

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleMoveSymbolPage(I)V

    goto/16 :goto_2

    .line 3323
    :sswitch_2a
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 3324
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3327
    :cond_53
    const/4 v0, 0x2

    if-ne v2, v0, :cond_54

    const/16 v0, 0x2000

    if-eq v3, v0, :cond_9

    const/16 v0, 0x1000

    if-eq v3, v0, :cond_9

    const/16 v0, 0x3000

    if-eq v3, v0, :cond_9

    .line 3331
    :cond_54
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3332
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3333
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_55

    .line 3334
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3336
    :cond_55
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_2

    .line 3340
    :sswitch_2b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 3341
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 3344
    :cond_56
    const/4 v0, 0x2

    if-ne v2, v0, :cond_57

    const/16 v0, 0x2000

    if-eq v3, v0, :cond_9

    const/16 v0, 0x1000

    if-eq v3, v0, :cond_9

    const/16 v0, 0x3000

    if-eq v3, v0, :cond_9

    .line 3348
    :cond_57
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3349
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3350
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_58

    .line 3351
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3353
    :cond_58
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_2

    .line 3358
    :sswitch_2c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_59

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 3359
    :cond_59
    const/16 v0, -0x6b

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleInputEmailAddress(I)V

    goto/16 :goto_2

    .line 3363
    :sswitch_2d
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5a

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 3364
    :cond_5a
    const/16 v0, -0x6c

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleInputEmailAddress(I)V

    goto/16 :goto_2

    .line 3368
    :sswitch_2e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getMultiLineEditorflag()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3369
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 3370
    if-eqz v4, :cond_5b

    .line 3372
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 3374
    :cond_5b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_2

    .line 3378
    :sswitch_2f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 3379
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setpreInputMode(I)V

    .line 3380
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 3381
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_5c

    .line 3382
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 3384
    :cond_5c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 3385
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3386
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    goto/16 :goto_2

    .line 3393
    :sswitch_30
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_5d

    .line 3394
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isStartedHwrTimer()Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 3395
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->finishRecognitionAndCommit()V

    .line 3401
    :cond_5d
    :goto_19
    const/16 v0, 0x20

    if-ne p1, v0, :cond_5f

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_5f

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5f

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-eqz v0, :cond_5f

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 3405
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    goto/16 :goto_2

    .line 3396
    :cond_5e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 3397
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->finishRecognition()V

    goto :goto_19

    .line 3409
    :cond_5f
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 3410
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 3414
    :cond_60
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_61

    .line 3415
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v1, v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 3418
    :cond_61
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 3419
    if-nez v0, :cond_63

    const/4 v0, 0x0

    :goto_1a
    const/high16 v1, -0x100

    and-int/2addr v0, v1

    .line 3420
    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoAppendOn()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isMultitapMode()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v1

    if-nez v1, :cond_8

    const/high16 v1, 0x100

    and-int/2addr v1, v0

    if-nez v1, :cond_8

    const/high16 v1, 0x200

    and-int/2addr v1, v0

    if-nez v1, :cond_8

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-nez v0, :cond_8

    const/4 v0, 0x2

    if-eq v2, v0, :cond_8

    const/4 v0, 0x3

    if-eq v2, v0, :cond_8

    .line 3428
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {v4, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3429
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_65

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 3431
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getLastWordBeforeCorsor()Ljava/lang/String;

    move-result-object v0

    .line 3432
    if-eqz v0, :cond_8

    .line 3433
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v0

    .line 3434
    array-length v1, v0

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWNoteWordDone([SS)S

    move-result v1

    .line 3435
    if-eqz v1, :cond_62

    .line 3436
    const-string v2, "AxT9IME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Xt9core.ET9AWNoteWordDone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3437
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initRUDB()S

    move-result v1

    .line 3438
    if-eqz v1, :cond_64

    .line 3439
    const-string v0, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initRUDB= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    :cond_62
    :goto_1b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->writeDBdataToFile(B)V

    goto/16 :goto_1

    .line 3419
    :cond_63
    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto/16 :goto_1a

    .line 3441
    :cond_64
    array-length v1, v0

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWNoteWordDone([SS)S

    move-result v0

    .line 3442
    if-eqz v0, :cond_62

    .line 3443
    const-string v1, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Xt9core.ET9AWNoteWordDone:wStatus= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    .line 3450
    :cond_65
    const-string v0, "AxT9IME"

    const-string v1, "Auto Append can not Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3469
    :cond_66
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_67
    move v0, v1

    goto/16 :goto_f

    :cond_68
    move v0, v1

    goto/16 :goto_b

    :cond_69
    move v0, v1

    goto/16 :goto_8

    :cond_6a
    move v0, v1

    goto/16 :goto_5

    .line 2616
    nop

    :sswitch_data_0
    .sparse-switch
        -0x136 -> :sswitch_1
        -0x134 -> :sswitch_22
        -0x133 -> :sswitch_21
        -0x132 -> :sswitch_20
        -0x131 -> :sswitch_1f
        -0x130 -> :sswitch_1e
        -0x12f -> :sswitch_1d
        -0x12e -> :sswitch_1c
        -0x12d -> :sswitch_1b
        -0x12c -> :sswitch_1a
        -0xd3 -> :sswitch_16
        -0xa2 -> :sswitch_14
        -0xa1 -> :sswitch_13
        -0x98 -> :sswitch_d
        -0x97 -> :sswitch_c
        -0x96 -> :sswitch_b
        -0x95 -> :sswitch_a
        -0x94 -> :sswitch_9
        -0x93 -> :sswitch_8
        -0x92 -> :sswitch_7
        -0x91 -> :sswitch_6
        -0x90 -> :sswitch_5
        -0x8f -> :sswitch_4
        -0x8e -> :sswitch_3
        -0x8d -> :sswitch_2
        -0x8a -> :sswitch_19
        -0x89 -> :sswitch_12
        -0x88 -> :sswitch_11
        -0x87 -> :sswitch_10
        -0x86 -> :sswitch_f
        -0x85 -> :sswitch_e
        -0x7c -> :sswitch_2f
        -0x7b -> :sswitch_0
        -0x78 -> :sswitch_2e
        -0x76 -> :sswitch_15
        -0x72 -> :sswitch_24
        -0x71 -> :sswitch_17
        -0x6f -> :sswitch_0
        -0x6e -> :sswitch_2b
        -0x6d -> :sswitch_2a
        -0x6c -> :sswitch_2d
        -0x6b -> :sswitch_2c
        -0x6a -> :sswitch_29
        -0x69 -> :sswitch_29
        -0x68 -> :sswitch_28
        -0x67 -> :sswitch_23
        -0x66 -> :sswitch_18
        -0x65 -> :sswitch_26
        -0x64 -> :sswitch_16
        -0x5 -> :sswitch_25
        -0x3 -> :sswitch_27
        -0x1 -> :sswitch_0
        0xa -> :sswitch_30
        0x20 -> :sswitch_30
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v11, 0xa

    const/16 v8, 0x43

    const/16 v7, -0xa1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1038
    sparse-switch p1, :sswitch_data_0

    .line 1140
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1141
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-eqz v6, :cond_b

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1142
    const/16 v6, 0x1d

    if-lt p1, v6, :cond_0

    const/16 v6, 0x36

    if-le p1, v6, :cond_1

    :cond_0
    if-ne p1, v8, :cond_3

    .line 1144
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1145
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    .line 1147
    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getKeycodeFromKeyEvent(I)I

    move-result v5

    .line 1148
    .local v5, keycode:I
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    move v6, v9

    .line 1192
    .end local v5           #keycode:I
    :goto_0
    return v6

    .line 1048
    :sswitch_0
    invoke-virtual {p0, v10}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 1192
    :cond_3
    :goto_1
    :sswitch_1
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v6

    goto :goto_0

    .line 1051
    :sswitch_2
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1052
    new-array v6, v9, [I

    aput v11, v6, v10

    invoke-virtual {p0, v11, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    move v6, v9

    .line 1053
    goto :goto_0

    .line 1057
    :sswitch_3
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1058
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1059
    new-array v6, v9, [I

    aput v7, v6, v10

    invoke-virtual {p0, v7, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    :goto_2
    move v6, v9

    .line 1063
    goto :goto_0

    .line 1061
    :cond_4
    const/16 v6, 0x20

    new-array v7, v9, [I

    const/16 v8, 0x20

    aput v8, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_2

    .line 1067
    :sswitch_4
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1068
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v6

    if-nez v6, :cond_5

    .line 1069
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v6, :cond_6

    .line 1070
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    :cond_5
    :goto_3
    move v6, v9

    .line 1075
    goto :goto_0

    .line 1072
    :cond_6
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto :goto_3

    .line 1079
    :sswitch_5
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1080
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v6, :cond_3

    .line 1081
    invoke-direct {p0, v10}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->startListening(Z)V

    goto :goto_1

    .line 1086
    :sswitch_6
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1087
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1088
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsUmlautOn:Z

    if-nez v6, :cond_7

    move v6, v9

    :goto_4
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsUmlautOn:Z

    goto :goto_1

    :cond_7
    move v6, v10

    goto :goto_4

    .line 1096
    :sswitch_7
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1098
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_1

    goto/16 :goto_1

    .line 1111
    :sswitch_8
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1112
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v6, :cond_a

    .line 1113
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    :cond_8
    :goto_5
    move v6, v9

    .line 1118
    goto/16 :goto_0

    .line 1101
    :sswitch_9
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 1102
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v3, :cond_9

    .line 1103
    invoke-interface {v3, v10, v9}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    :cond_9
    move v6, v9

    .line 1105
    goto/16 :goto_0

    .line 1115
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto :goto_5

    .line 1122
    :sswitch_a
    new-array v6, v9, [I

    aput v7, v6, v10

    invoke-virtual {p0, v7, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto/16 :goto_1

    .line 1152
    :cond_b
    const/16 v6, 0x1d

    if-lt p1, v6, :cond_c

    const/16 v6, 0x36

    if-le p1, v6, :cond_d

    :cond_c
    if-ne p1, v8, :cond_3

    .line 1154
    :cond_d
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1155
    const/4 v0, 0x0

    .line 1156
    .local v0, capslock:Z
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1157
    const/4 v0, 0x1

    .line 1159
    :cond_e
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    .line 1160
    if-eqz v0, :cond_f

    .line 1161
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 1169
    .end local v0           #capslock:Z
    :cond_f
    iget-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsUmlautOn:Z

    if-nez v6, :cond_10

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v6

    if-eqz v6, :cond_13

    :cond_10
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v6, :cond_13

    if-eq p1, v8, :cond_13

    .line 1171
    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v6

    invoke-virtual {v6}, Landroid/inputmethodservice/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v4

    .line 1172
    .local v4, keyList:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getKeycodeFromKeyEvent(I)I

    move-result v5

    .line 1173
    .restart local v5       #keycode:I
    const/4 v1, 0x0

    .line 1174
    .local v1, dialogkey:Landroid/inputmethodservice/Keyboard$Key;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_12

    .line 1175
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/inputmethodservice/Keyboard$Key;

    iget-object v6, v6, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v6, v6, v10

    if-ne v6, v5, :cond_11

    .line 1176
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #dialogkey:Landroid/inputmethodservice/Keyboard$Key;
    check-cast v1, Landroid/inputmethodservice/Keyboard$Key;

    .line 1174
    .restart local v1       #dialogkey:Landroid/inputmethodservice/Keyboard$Key;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1180
    :cond_12
    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->showDialogKeys(Landroid/inputmethodservice/Keyboard$Key;)V

    .line 1181
    iput-boolean v10, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsUmlautOn:Z

    .end local v1           #dialogkey:Landroid/inputmethodservice/Keyboard$Key;
    .end local v2           #i:I
    .end local v4           #keyList:Ljava/util/List;,"Ljava/util/List<Landroid/inputmethodservice/Keyboard$Key;>;"
    :goto_7
    move v6, v9

    .line 1186
    goto/16 :goto_0

    .line 1183
    .end local v5           #keycode:I
    :cond_13
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getKeycodeFromKeyEvent(I)I

    move-result v5

    .line 1184
    .restart local v5       #keycode:I
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    goto :goto_7

    .line 1038
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_7
        0x3e -> :sswitch_3
        0x42 -> :sswitch_2
        0x52 -> :sswitch_0
        0x62 -> :sswitch_6
        0x65 -> :sswitch_5
        0x67 -> :sswitch_4
    .end sparse-switch

    .line 1098
    :sswitch_data_1
    .sparse-switch
        0x1d -> :sswitch_1
        0x3a -> :sswitch_8
        0x61 -> :sswitch_1
        0x68 -> :sswitch_1
        0x6d -> :sswitch_1
        0x6e -> :sswitch_1
        0x6f -> :sswitch_9
        0x7a -> :sswitch_a
        0x7b -> :sswitch_1
    .end sparse-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "count"
    .parameter "event"

    .prologue
    .line 1211
    invoke-super {p0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 1219
    sparse-switch p1, :sswitch_data_0

    .line 1267
    :cond_0
    :goto_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 1231
    :sswitch_1
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 1232
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1233
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 1235
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v1, :cond_0

    .line 1236
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->handleBack()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1238
    const/4 v1, 0x1

    goto :goto_1

    .line 1251
    :sswitch_2
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1252
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1253
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 1254
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1255
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1256
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 1260
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsVisibleWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1219
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
        0x52 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPress(I)V
    .locals 6
    .parameter "primaryCode"

    .prologue
    const/4 v5, -0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5066
    if-nez p1, :cond_1

    .line 5107
    :cond_0
    :goto_0
    return-void

    .line 5067
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 5069
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputLanguageId()S

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    .line 5071
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleShiftkey()V

    .line 5073
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShiftPressed(Z)V

    .line 5077
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    if-nez v0, :cond_0

    .line 5082
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isThisKeyEnable(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5083
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundNVibrateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundNVibrateHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 5085
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundNVibrateHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSoundNVibrateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 5089
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x20

    if-eq p1, v0, :cond_8

    .line 5090
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCanceled:Z

    .line 5095
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isMultitapMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5096
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5097
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 5098
    if-gez p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eq p1, v5, :cond_0

    .line 5099
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    goto/16 :goto_0

    .line 5074
    :cond_7
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShiftPressed(Z)V

    goto :goto_1

    .line 5091
    :cond_8
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    if-eqz v0, :cond_6

    if-eq p1, v5, :cond_6

    .line 5092
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDoubleSpaceCancelLv1:Z

    goto :goto_2
.end method

.method public onRelease(I)V
    .locals 1
    .parameter "primaryCode"

    .prologue
    .line 5043
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNumericKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphaKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5044
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isInMultiTap()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    const/16 v0, -0x72

    if-eq p1, v0, :cond_0

    .line 5048
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearLastKey()V

    .line 5052
    :cond_0
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isFunctionKey(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5053
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastInputKeyCodeForOnUpdateSelection:I

    .line 5055
    :cond_1
    return-void
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1274
    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mChangeConfigRequested:Z

    if-eqz v0, :cond_2

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    .line 1275
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mChangeConfigRequested:Z

    .line 1276
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-nez v0, :cond_0

    .line 1277
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onCreateInputView()Landroid/view/View;

    .line 1279
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlternativeChar:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1280
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1281
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 1282
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlternativeChar:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1284
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAlternativeChar:Ljava/lang/String;

    .line 1286
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1287
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1289
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    :goto_1
    sput-boolean v0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    .line 1291
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1292
    return-void

    :cond_2
    move v0, v3

    .line 1274
    goto :goto_0

    :cond_3
    move v0, v3

    .line 1289
    goto :goto_1
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x1

    const/4 v5, -0x1

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1300
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v1, 0xfff000

    and-int/2addr v0, v1

    .line 1302
    and-int/2addr v0, v8

    if-eqz v0, :cond_1b

    if-eqz p2, :cond_1b

    move v1, v4

    .line 1304
    :goto_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-nez v0, :cond_0

    .line 1305
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onCreateInputView()Landroid/view/View;

    .line 1307
    :cond_0
    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 1309
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    .line 1310
    if-eqz v0, :cond_1e

    .line 1311
    const-string v2, "NoSetting"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1312
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    .line 1313
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    .line 1329
    :goto_1
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getBkInputMethodType()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 1330
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getBkInputMethodType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    .line 1331
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setBkInputMethodType(I)V

    .line 1334
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 1335
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOldLocale:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1336
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOldLocale:Ljava/util/Locale;

    .line 1337
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->makeKeyboards()V

    .line 1341
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_3

    .line 1342
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setPreviewEnabled(Z)V

    .line 1347
    :cond_3
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPredictionOn(Z)V

    .line 1348
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setIsEditorAutoCompletion(Z)V

    .line 1349
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setIsEditorMessage(Z)V

    .line 1350
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 1351
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputMethodOptMenuEnabled(Z)V

    .line 1352
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLangOptMenuEnabled(Z)V

    .line 1353
    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setMultiLineEditorflag(Z)V

    .line 1354
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setFlagIsSoftkeyShown(Z)V

    .line 1355
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSearchEditorflag(Z)V

    .line 1356
    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    .line 1357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    .line 1358
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    .line 1359
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateRingerMode()V

    .line 1360
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_4

    .line 1361
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->clearOffsetInWindow()V

    .line 1364
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSettingValues()V

    .line 1365
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_5

    if-nez v1, :cond_5

    .line 1366
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSettingLanguage()V

    .line 1373
    :cond_5
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v2, 0x400000ff

    and-int/2addr v0, v2

    .line 1375
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0xfff000

    and-int/2addr v2, v3

    .line 1376
    if-eqz p2, :cond_1f

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v3, :cond_1f

    if-eq v0, v7, :cond_6

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1f

    :cond_6
    and-int v0, v2, v8

    if-eqz v0, :cond_1f

    move v0, v4

    :goto_2
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    .line 1380
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v0, :cond_7

    .line 1381
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initXT9Settings()V

    .line 1382
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-short v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initCore(S)V

    .line 1383
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputMode(I)V

    .line 1385
    :cond_7
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputLanguageId()S

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_8

    .line 1386
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 1387
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 1390
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setEditorType(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1391
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSettingValues()V

    .line 1393
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v0

    if-ne v0, v7, :cond_9

    .line 1394
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1395
    if-eqz v0, :cond_9

    .line 1396
    invoke-interface {v0, v4, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1397
    if-eqz v0, :cond_9

    .line 1398
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_20

    move v0, v4

    :goto_3
    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    .line 1403
    :cond_9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v2, p1, Landroid/view/inputmethod/EditorInfo;->privateImeOptions:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->initPrivateImeOptions(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_21

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_21

    if-nez v1, :cond_21

    .line 1404
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputType()V

    .line 1405
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setDefaultInputmode()V

    .line 1424
    :cond_a
    :goto_4
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v0, :cond_e

    .line 1445
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_b

    if-eqz v1, :cond_24

    .line 1446
    :cond_b
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    iget-short v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguage:S

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setInputLanguageWithID(SI)V

    .line 1447
    :cond_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setHwrInputMode(I)V

    .line 1452
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1453
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 1473
    :cond_e
    if-eqz p2, :cond_10

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_10

    .line 1475
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v0, :cond_10

    .line 1476
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_f

    .line 1477
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 1479
    :cond_f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1483
    :cond_10
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_11

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_11

    .line 1485
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->closing()V

    .line 1490
    :cond_11
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v0, :cond_12

    .line 1494
    :cond_12
    iput v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mDeleteCount:I

    .line 1496
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_13

    if-nez v1, :cond_13

    .line 1497
    invoke-virtual {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 1500
    :cond_13
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_14

    if-nez v1, :cond_14

    .line 1501
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v6, v6, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 1504
    :cond_14
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_15

    if-nez v1, :cond_15

    .line 1505
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    .line 1506
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    .line 1509
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v0, :cond_15

    .line 1510
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 1511
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v0, :cond_15

    .line 1512
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 1517
    :cond_15
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isUsingHWKeypad()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1518
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0, v7}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethod(I)V

    .line 1519
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    .line 1537
    :cond_16
    :goto_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_17

    .line 1538
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->initSymbolHistory()V

    .line 1542
    :cond_17
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_18

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v0, :cond_18

    .line 1543
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    .line 1545
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    if-eqz v0, :cond_29

    .line 1546
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v0, :cond_28

    .line 1547
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 1556
    :cond_18
    :goto_7
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V

    .line 1557
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-eqz v0, :cond_19

    .line 1558
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    .line 1560
    :cond_19
    if-nez p2, :cond_1a

    .line 1561
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    .line 1563
    :cond_1a
    return-void

    :cond_1b
    move v1, v6

    .line 1302
    goto/16 :goto_0

    .line 1314
    :cond_1c
    const-string v2, "EngToggle"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1315
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    .line 1316
    iput-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    goto/16 :goto_1

    .line 1319
    :cond_1d
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    .line 1320
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    goto/16 :goto_1

    .line 1324
    :cond_1e
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsNoSetting:Z

    .line 1325
    iput-boolean v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEngToggle:Z

    goto/16 :goto_1

    :cond_1f
    move v0, v6

    .line 1376
    goto/16 :goto_2

    :cond_20
    move v0, v6

    .line 1398
    goto/16 :goto_3

    .line 1406
    :cond_21
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputType()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 1409
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v2

    move v3, v6

    move v4, v5

    :goto_8
    if-ge v3, v2, :cond_22

    .line 1410
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mT9Lang:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangDBId()S

    move-result v0

    const/16 v5, 0x12

    if-ne v0, v5, :cond_2a

    move v0, v3

    .line 1409
    :goto_9
    add-int/lit8 v3, v3, 0x1

    move v4, v0

    goto :goto_8

    .line 1415
    :cond_22
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1416
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1418
    :cond_23
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    if-ne v0, v4, :cond_a

    .line 1419
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    goto/16 :goto_4

    .line 1449
    :cond_24
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLanguage(I)V

    goto/16 :goto_5

    .line 1521
    :cond_25
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v0, :cond_27

    .line 1523
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v0, :cond_16

    .line 1524
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getDefaultInputmethod()I

    move-result v0

    if-eqz v0, :cond_26

    .line 1525
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentInputMethodType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethod(I)V

    .line 1526
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setDefaultInputmehtod()V

    goto/16 :goto_6

    .line 1528
    :cond_26
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentInputMethodType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto/16 :goto_6

    .line 1532
    :cond_27
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentInputMethodType:I

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethod(I)V

    .line 1533
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_6

    .line 1549
    :cond_28
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    goto/16 :goto_7

    .line 1552
    :cond_29
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto/16 :goto_7

    :cond_2a
    move v0, v4

    goto :goto_9
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "text"

    .prologue
    .line 7456
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputHighlighted:Z

    if-eqz v2, :cond_0

    .line 7457
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitVoiceInput()V

    .line 7459
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 7460
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_2

    .line 7482
    :cond_1
    :goto_0
    return-void

    .line 7461
    :cond_2
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isInMultiTap()Z

    move-result v2

    if-nez v2, :cond_4

    .line 7463
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 7471
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 7472
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7474
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 7475
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 7477
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v2, v3, :cond_5

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 7478
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    goto :goto_0

    .line 7464
    :cond_4
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v2

    if-lez v2, :cond_3

    .line 7465
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v0

    .line 7466
    .local v0, ActiveIndex:I
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->noteWordDone(I)V

    .line 7467
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->selectWord(I)V

    .line 7468
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    goto :goto_1

    .line 7479
    .end local v0           #ActiveIndex:I
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v2, :cond_1

    .line 7480
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_0
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 5
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    .line 1599
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1602
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 1603
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    if-eqz v3, :cond_e

    .line 1604
    if-ne p3, p4, :cond_0

    .line 1605
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    .line 1606
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_0

    .line 1607
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 1619
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEditorHasText:Z

    if-eqz v3, :cond_f

    .line 1620
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isEditorHasText(II)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1621
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEditorHasText:Z

    .line 1622
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_1

    .line 1623
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    .line 1636
    :cond_1
    :goto_1
    if-eq p3, p4, :cond_10

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    .line 1638
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getEditortype()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_4

    .line 1640
    const/4 v2, -0x1

    .line 1641
    .local v2, www_index:I
    const/4 v0, -0x1

    .line 1642
    .local v0, dotLocale_index:I
    if-nez p3, :cond_11

    if-nez p4, :cond_11

    .line 1643
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    if-nez v3, :cond_2

    .line 1644
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    .line 1645
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getCurrentWwwdotKeyIndex()I

    move-result v2

    .line 1646
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getCurrentDotCoDotLocaleKeyIndex()I

    move-result v0

    .line 1655
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1656
    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 1657
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateKey(I)V

    .line 1659
    :cond_3
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 1660
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3, v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateKey(I)V

    .line 1667
    .end local v0           #dotLocale_index:I
    .end local v2           #www_index:I
    :cond_4
    if-eqz p1, :cond_13

    if-nez p3, :cond_13

    if-nez p4, :cond_13

    const/4 v3, -0x1

    if-ne p5, v3, :cond_13

    const/4 v3, -0x1

    if-ne p6, v3, :cond_13

    .line 1670
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1671
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1672
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 1674
    :cond_5
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1675
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_6

    .line 1676
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->finishRecognition()V

    .line 1695
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_8

    if-ne p1, p2, :cond_8

    if-ne p3, p4, :cond_8

    if-eq p5, p6, :cond_8

    if-ne p6, p2, :cond_8

    if-eq p1, p3, :cond_8

    if-eq p2, p4, :cond_8

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    if-nez v3, :cond_8

    .line 1700
    if-eqz v1, :cond_8

    .line 1701
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->clearCurrentComposing()V

    .line 1702
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_7

    .line 1703
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 1705
    :cond_7
    invoke-interface {v1, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 1709
    :cond_8
    const/4 v3, -0x1

    if-eq p6, v3, :cond_14

    if-eq p4, p6, :cond_14

    .line 1710
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 1711
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_9

    .line 1712
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 1714
    :cond_9
    if-eqz v1, :cond_a

    .line 1715
    invoke-interface {v1, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 1768
    :cond_a
    :goto_5
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isInMultiTap()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1769
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isShiftPressed()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1770
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    .line 1773
    :cond_b
    const/16 v3, -0xff

    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastInputKeyCodeForOnUpdateSelection:I

    .line 1774
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 1777
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    if-eqz v3, :cond_d

    sget-boolean v3, Lcom/sec/android/inputmethod/axt9/AxT9IME;->VOICE_INSTALLED:Z

    if-eqz v3, :cond_d

    .line 1778
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mShowingVoiceSuggestions:Z

    if-eqz v3, :cond_c

    .line 1779
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mImmediatelyAfterVoiceSuggestions:Z

    if-eqz v3, :cond_1d

    .line 1780
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mImmediatelyAfterVoiceSuggestions:Z

    .line 1786
    :cond_c
    :goto_6
    sget-boolean v3, Lcom/android/inputmethod/voice/VoiceInput;->ENABLE_WORD_CORRECTIONS:Z

    if-eqz v3, :cond_d

    .line 1798
    :cond_d
    return-void

    .line 1611
    :cond_e
    if-eq p3, p4, :cond_0

    .line 1612
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsTextSelected:Z

    .line 1613
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_0

    .line 1614
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_0

    .line 1627
    :cond_f
    invoke-virtual {p0, p3, p4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isEditorHasText(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1628
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsEditorHasText:Z

    .line 1629
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_1

    .line 1630
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_1

    .line 1636
    :cond_10
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1649
    .restart local v0       #dotLocale_index:I
    .restart local v2       #www_index:I
    :cond_11
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    if-eqz v3, :cond_2

    .line 1650
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsShouldwwwDisplayed:Z

    .line 1651
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getCurrentWwwdotKeyIndex()I

    move-result v2

    .line 1652
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getCurrentDotCoDotLocaleKeyIndex()I

    move-result v0

    goto/16 :goto_3

    .line 1679
    .end local v0           #dotLocale_index:I
    .end local v2           #www_index:I
    :cond_12
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_6

    .line 1680
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    goto/16 :goto_4

    .line 1683
    :cond_13
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_6

    if-ne p1, p2, :cond_6

    if-ne p4, p2, :cond_6

    if-eq p5, p6, :cond_6

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getRealInputMethodType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 1689
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitAndInitComposing()V

    .line 1690
    if-eqz v1, :cond_6

    .line 1691
    invoke-interface {v1, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_4

    .line 1717
    :cond_14
    const/4 v3, -0x1

    if-ne p6, v3, :cond_17

    if-nez p4, :cond_17

    .line 1718
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_15

    .line 1719
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->breakContext()S

    .line 1722
    :cond_15
    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastInputKeyCodeForOnUpdateSelection:I

    const/16 v4, -0xff

    if-ne v3, v4, :cond_a

    .line 1723
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1724
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 1725
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_5

    .line 1726
    :cond_16
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    if-nez v3, :cond_a

    .line 1727
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto/16 :goto_5

    .line 1730
    :cond_17
    const/4 v3, -0x1

    if-ne p5, v3, :cond_1a

    sub-int v3, p4, p2

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-le v3, v4, :cond_1a

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_1a

    .line 1731
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1732
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1733
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_18

    .line 1734
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 1737
    :cond_18
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1738
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 1739
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_5

    .line 1741
    :cond_19
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_a

    .line 1742
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    goto/16 :goto_5

    .line 1745
    :cond_1a
    if-eq p3, p4, :cond_a

    .line 1746
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    if-nez v3, :cond_1b

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1b

    .line 1747
    if-eqz v1, :cond_a

    .line 1750
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1751
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 1752
    invoke-interface {v1, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    goto/16 :goto_5

    .line 1754
    :cond_1b
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_a

    .line 1755
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1756
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 1757
    if-eqz v1, :cond_1c

    .line 1760
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1761
    invoke-interface {v1, p3, p4}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 1763
    :cond_1c
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_5

    .line 1783
    :cond_1d
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mShowingVoiceSuggestions:Z

    goto/16 :goto_6
.end method

.method public onVoiceResults(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 8549
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, alternatives:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/CharSequence;>;>;"
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRecognizing:Z

    if-nez v0, :cond_0

    .line 8555
    :goto_0
    return-void

    .line 8552
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    iput-object p1, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;->candidates:Ljava/util/List;

    .line 8553
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceResults:Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;

    iput-object p2, v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$VoiceResults;->alternatives:Ljava/util/Map;

    .line 8554
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public pickSuggestionManually(ILjava/lang/CharSequence;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v6, 0x20

    const/4 v5, 0x0

    const-string v7, "Xt9core.ET9AWNoteWordDone:wStatus= "

    const-string v4, "AxT9IME"

    .line 5493
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 5495
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    if-eqz v1, :cond_5

    if-ltz p1, :cond_5

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    array-length v1, v1

    if-ge p1, v1, :cond_5

    .line 5496
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCompletions:[Landroid/view/inputmethod/CompletionInfo;

    aget-object v1, v1, p1

    .line 5497
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCommitedLength:I

    .line 5498
    if-eqz v0, :cond_0

    .line 5499
    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z

    .line 5501
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_1

    .line 5502
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->clear()V

    .line 5514
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsEditorAutoCompletion()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5515
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->convertStringtoShortArr(Ljava/lang/String;)[S

    move-result-object v0

    .line 5516
    array-length v1, v0

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWNoteWordDone([SS)S

    move-result v1

    .line 5517
    if-eqz v1, :cond_2

    .line 5518
    const-string v2, "AxT9IME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Xt9core.ET9AWNoteWordDone:wStatus= "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5519
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->initRUDB()S

    move-result v1

    .line 5520
    if-eqz v1, :cond_7

    .line 5521
    const-string v0, "AxT9IME"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initRUDB= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5530
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->selectWord(I)V

    .line 5533
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    .line 5535
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsAutoSpace()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5538
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v6, v0, v5

    invoke-virtual {p0, v6, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onKey(I[I)V

    .line 5540
    :cond_4
    return-void

    .line 5505
    :cond_5
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 5506
    if-eqz v0, :cond_6

    .line 5508
    invoke-direct {p0, v0, p2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->commitTextToIc(Landroid/view/inputmethod/InputConnection;Ljava/lang/CharSequence;)V

    .line 5510
    :cond_6
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 5523
    :cond_7
    array-length v1, v0

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/sec/android/inputmethod/axt9/xt9/Xt9core;->ET9AWNoteWordDone([SS)S

    move-result v0

    .line 5524
    if-eqz v0, :cond_2

    .line 5525
    const-string v1, "AxT9IME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Xt9core.ET9AWNoteWordDone:wStatus= "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public playKeyClick(I)V
    .locals 2
    .parameter "primaryCode"

    .prologue
    .line 5250
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 5251
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v1, :cond_0

    .line 5252
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->updateRingerMode()V

    .line 5256
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsSoundOn()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsSilentMode()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5257
    const/4 v0, 0x5

    .line 5258
    .local v0, sound:I
    sparse-switch p1, :sswitch_data_0

    .line 5270
    :goto_0
    
    # djp952: The key sound is too loud and annoying; disabling it
    # invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->playKeySound(I)V

    .line 5272
    .end local v0           #sound:I
    :cond_1
    return-void

    .line 5260
    .restart local v0       #sound:I
    :sswitch_0
    const/4 v0, 0x7

    .line 5261
    goto :goto_0

    .line 5263
    :sswitch_1
    const/16 v0, 0x8

    .line 5264
    goto :goto_0

    .line 5266
    :sswitch_2
    const/4 v0, 0x6

    goto :goto_0

    .line 5258
    :sswitch_data_0
    .sparse-switch
        -0x5 -> :sswitch_0
        0xa -> :sswitch_1
        0x20 -> :sswitch_2
    .end sparse-switch
.end method

.method public restoreForcedCapslock()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8815
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8816
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->SENTENCES:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v0, v1, :cond_1

    .line 8817
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 8818
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 8819
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 8834
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8835
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsCapsLockOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8836
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 8843
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreShiftInputMode()V

    .line 8844
    return-void

    .line 8820
    :cond_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->WORDS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-ne v0, v1, :cond_2

    .line 8821
    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 8822
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 8823
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    goto :goto_0

    .line 8824
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    sget-object v1, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    if-eq v0, v1, :cond_0

    .line 8827
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    goto :goto_0

    .line 8830
    :cond_3
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 8831
    invoke-direct {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    goto :goto_0

    .line 8838
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftOn()V

    goto :goto_1

    .line 8841
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setNonShiftMode()V

    goto :goto_1
.end method

.method restoreShiftInputMode()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, ""

    .line 4441
    const-string v0, ""

    .line 4442
    const-string v0, ""

    .line 4443
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 4444
    if-eqz v1, :cond_6

    .line 4445
    invoke-interface {v1, v5, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 4446
    invoke-interface {v1, v6, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 4449
    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 4537
    :cond_0
    :goto_1
    return-void

    .line 4454
    :cond_1
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSetShiftMode:Z

    if-nez v2, :cond_0

    .line 4458
    :cond_2
    invoke-direct {p0, v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isShouldSetShifted(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 4459
    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v3, :cond_4

    .line 4460
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 4461
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 4462
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 4464
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 4466
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 4467
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 4469
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4470
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 4474
    :goto_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto :goto_1

    .line 4472
    :cond_3
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    goto :goto_2

    .line 4475
    :cond_4
    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v2, :cond_0

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_5
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->IsOneTimeShift()Z

    move-result v0

    if-ne v0, v5, :cond_0

    .line 4481
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 4482
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 4483
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 4484
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v0

    check-cast v0, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 4486
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 4488
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 4489
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto/16 :goto_1

    :cond_6
    move-object v0, v3

    move-object v1, v3

    goto/16 :goto_0
.end method

.method public setCandidatesViewShown(Z)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7579
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-nez v0, :cond_1

    .line 7619
    :cond_0
    :goto_0
    return-void

    .line 7582
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v0

    .line 7585
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    .line 7587
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentPrivateImeOptionPrevNext()I

    move-result v1

    .line 7588
    if-nez p1, :cond_2

    if-eqz v1, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v5

    .line 7591
    :goto_1
    invoke-super {p0, v1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 7593
    if-nez v1, :cond_3

    .line 7594
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5, v5, v4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setSuggestions(Ljava/util/List;ZZB)V

    .line 7597
    :cond_3
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v3, :cond_5

    const/4 v3, 0x2

    :goto_2
    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setCandidateMode(I)V

    .line 7607
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v2, :cond_0

    if-eq v1, v0, :cond_0

    .line 7608
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7609
    const-string v1, "CandidateViewShownAction"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7610
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v1

    .line 7611
    const-string v2, "AxT9IME.isCandidateViewShown"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 7612
    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendBroadcast(Landroid/content/Intent;)V

    .line 7616
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->showActionPopup()V

    goto :goto_0

    :cond_4
    move v1, v4

    .line 7588
    goto :goto_1

    :cond_5
    move v3, v4

    .line 7597
    goto :goto_2
.end method

.method setCapsLockOn()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2487
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-eqz v4, :cond_1

    move v1, v6

    .line 2488
    .local v1, alreadyCapslock:Z
    :goto_0
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 2489
    invoke-direct {p0, v6}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 2490
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-nez v4, :cond_2

    .line 2516
    :cond_0
    :goto_1
    return-void

    .end local v1           #alreadyCapslock:Z
    :cond_1
    move v1, v7

    .line 2487
    goto :goto_0

    .line 2493
    .restart local v1       #alreadyCapslock:Z
    :cond_2
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 2494
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v3

    check-cast v3, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2495
    .local v3, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    if-eqz v3, :cond_3

    .line 2496
    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 2498
    :cond_3
    sget-object v4, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->CAPSLOCK:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 2499
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4, v8}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 2500
    if-nez v1, :cond_0

    .line 2501
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2502
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4, v8}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectListPostShift(B)B

    .line 2503
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2504
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2505
    .local v0, InputWord:Ljava/lang/CharSequence;
    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 2506
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 2507
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 2508
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_4

    .line 2509
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v2, v4, v6}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2512
    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_4
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v5

    invoke-virtual {p0, v4, v6, v6, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 2514
    .end local v0           #InputWord:Ljava/lang/CharSequence;
    :cond_5
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto :goto_1
.end method

.method public setComposingText(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 7216
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 7218
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 7219
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    move-result v1

    .line 7221
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCurrentComposing(Ljava/lang/StringBuilder;)V
    .locals 0
    .parameter "composing"

    .prologue
    .line 7207
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    .line 7208
    return-void
.end method

.method public setCurrentNumberSymbolsPageNumber(I)V
    .locals 0
    .parameter "Index"

    .prologue
    .line 3753
    iput p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    .line 3754
    return-void
.end method

.method public setDefaultTextInputMode()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6154
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 6155
    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 6158
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 6161
    return-void
.end method

.method public setEditorType(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 6575
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit16 v0, v0, 0xff0

    .line 6576
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v2, 0xfff000

    and-int/2addr v1, v2

    .line 6577
    iget v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v3, -0x100

    and-int/2addr v2, v3

    .line 6578
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v4, 0x400000ff

    and-int/2addr v3, v4

    .line 6579
    iput v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorAction:I

    .line 6581
    const/high16 v4, 0x1

    and-int/2addr v4, v1

    if-eqz v4, :cond_17

    if-eqz p2, :cond_17

    const/4 v4, 0x1

    .line 6591
    :goto_0
    const/4 v5, -0x1

    .line 6592
    const-string v6, "ko"

    .line 6595
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v7

    :goto_1
    if-ge v6, v7, :cond_0

    .line 6596
    const-string v8, "ko"

    iget-object v9, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v9}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p2}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 6597
    add-int/lit8 v5, v6, 0x1

    .line 6603
    :cond_0
    iget v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    if-eq v6, v5, :cond_2

    iget v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    if-nez v5, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 6607
    :cond_2
    const/4 v5, 0x1

    .line 6613
    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 6649
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v6, 0x4000

    and-int/2addr v3, v6

    if-eqz v3, :cond_3

    .line 6653
    :cond_3
    :goto_3
    :pswitch_0
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v3, :cond_4

    .line 6657
    :cond_4
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v3, :cond_5

    .line 6661
    :cond_5
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoSpace(Z)V

    .line 6662
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPasswordMode(Z)V

    .line 6663
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCustomExtractViewEnabled(Z)V

    .line 6665
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v3, v3, 0xf

    packed-switch v3, :pswitch_data_1

    .line 6724
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setEditorType(I)V

    .line 6727
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    .line 6728
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isXt9SettingEnabled()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 6729
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 6735
    :goto_4
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 6736
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 6739
    :cond_6
    sparse-switch v0, :sswitch_data_0

    .line 6976
    :cond_7
    :goto_5
    :sswitch_0
    const v0, 0x8000

    and-int/2addr v0, v1

    if-eqz v0, :cond_8

    .line 6977
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_8

    if-nez v4, :cond_8

    .line 6984
    :cond_8
    const/high16 v0, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    .line 6985
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setIsEditorAutoCompletion(Z)V

    .line 6986
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 6987
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_9

    if-nez v4, :cond_9

    .line 6988
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 6993
    :cond_9
    and-int/lit16 v0, v1, 0x4000

    if-eqz v0, :cond_b

    .line 6994
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->SENTENCES:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    .line 6996
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_b

    if-nez v4, :cond_b

    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6997
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_b

    .line 6998
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 6999
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_a

    .line 7000
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 7001
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 7003
    :cond_a
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 7008
    :cond_b
    const/high16 v0, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_c

    .line 7009
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setMultiLineEditorflag(Z)V

    .line 7012
    :cond_c
    const/high16 v0, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_d

    .line 7013
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setMultiLineEditorflag(Z)V

    .line 7016
    :cond_d
    and-int/lit16 v0, v1, 0x2000

    if-eqz v0, :cond_f

    .line 7017
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->WORDS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    .line 7019
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_f

    if-nez v4, :cond_f

    .line 7020
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_f

    .line 7021
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7022
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_e

    .line 7023
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 7024
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 7026
    :cond_e
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 7031
    :cond_f
    and-int/lit16 v0, v1, 0x1000

    if-eqz v0, :cond_11

    .line 7033
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;->CHARACTERS:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mAutoCapMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$Capitalize;

    .line 7034
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_11

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_11

    if-nez v4, :cond_11

    .line 7035
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 7036
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 7037
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_10

    .line 7038
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 7039
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 7041
    :cond_10
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->CAPSLOCK:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    .line 7049
    :cond_11
    const/high16 v0, 0x200

    and-int/2addr v0, v2

    if-eqz v0, :cond_12

    .line 7050
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputMethodOptMenuEnabled(Z)V

    .line 7051
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLangOptMenuEnabled(Z)V

    .line 7052
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 7053
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_12

    if-nez v4, :cond_12

    .line 7054
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7056
    if-eqz v5, :cond_12

    .line 7057
    const-string v0, "en"

    .line 7058
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v1

    :goto_6
    if-ge v0, v1, :cond_12

    .line 7059
    const-string v3, "en"

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 7060
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 7069
    :cond_12
    const/high16 v0, 0x400

    and-int/2addr v0, v2

    if-eqz v0, :cond_13

    .line 7070
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputMethodOptMenuEnabled(Z)V

    .line 7071
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLangOptMenuEnabled(Z)V

    .line 7072
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 7073
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_13

    if-nez v4, :cond_13

    .line 7074
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7076
    if-eqz v5, :cond_13

    .line 7077
    const-string v0, "en"

    .line 7078
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v1

    :goto_7
    if-ge v0, v1, :cond_13

    .line 7079
    const-string v3, "en"

    iget-object v6, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v6}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    .line 7080
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 7089
    :cond_13
    const/high16 v0, 0x100

    and-int/2addr v0, v2

    if-eqz v0, :cond_14

    .line 7090
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputMethodOptMenuEnabled(Z)V

    .line 7091
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setInputLangOptMenuEnabled(Z)V

    .line 7092
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 7093
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_14

    if-nez v4, :cond_14

    .line 7094
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 7096
    if-eqz v5, :cond_14

    .line 7097
    const-string v0, "en"

    .line 7098
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v1

    :goto_8
    if-ge v0, v1, :cond_14

    .line 7099
    const-string v3, "en"

    iget-object v5, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v5}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 7100
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 7115
    :cond_14
    const/high16 v0, 0x1000

    and-int/2addr v0, v2

    if-eqz v0, :cond_37

    .line 7116
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_15

    if-nez v4, :cond_15

    .line 7136
    :cond_15
    :goto_9
    const/high16 v0, -0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_16

    .line 7137
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCustomExtractViewEnabled(Z)V

    .line 7150
    :cond_16
    :goto_a
    return-void

    .line 6581
    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 6595
    :cond_18
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 6609
    :cond_19
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 6616
    :pswitch_1
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    goto/16 :goto_3

    .line 6621
    :pswitch_2
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    goto/16 :goto_3

    .line 6626
    :pswitch_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    goto/16 :goto_3

    .line 6635
    :pswitch_4
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    .line 6636
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSearchEditorflag(Z)V

    goto/16 :goto_3

    .line 6640
    :pswitch_5
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    goto/16 :goto_3

    .line 6645
    :pswitch_6
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSpecialActionflag(Z)V

    goto/16 :goto_3

    .line 6669
    :pswitch_7
    const/16 v2, 0x20

    if-ne v0, v2, :cond_1f

    .line 6680
    :cond_1a
    :goto_b
    :pswitch_8
    const/16 v0, 0x2000

    if-ne v1, v0, :cond_20

    .line 6690
    :cond_1b
    :goto_c
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setEditorType(I)V

    .line 6691
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_1c

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_1c

    if-eqz v4, :cond_1d

    :cond_1c
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentInputMethodType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1d

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1d

    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1e

    .line 6695
    :cond_1d
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCurrentNumberSymbolsPageNumber(I)V

    .line 6698
    :cond_1e
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_16

    if-nez v4, :cond_16

    .line 6699
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isHandwriting()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    :goto_d
    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentInputMethodType:I

    .line 6700
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto :goto_a

    .line 6671
    :cond_1f
    const/16 v2, 0x10

    if-eq v0, v2, :cond_1a

    .line 6673
    if-nez v0, :cond_1a

    goto :goto_b

    .line 6682
    :cond_20
    const/16 v0, 0x1000

    if-eq v1, v0, :cond_1b

    .line 6684
    const/16 v0, 0x3000

    if-ne v1, v0, :cond_1b

    goto :goto_c

    .line 6699
    :cond_21
    const/4 v0, 0x0

    goto :goto_d

    .line 6706
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setEditorType(I)V

    .line 6707
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_16

    if-nez v4, :cond_16

    .line 6708
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setKeyboardInputMode(I)V

    goto/16 :goto_a

    .line 6731
    :cond_22
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    goto/16 :goto_4

    .line 6749
    :sswitch_1
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_23

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_23

    if-nez v4, :cond_23

    .line 6750
    const-string v0, "en"

    .line 6751
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    :goto_e
    if-ge v0, v3, :cond_23

    .line 6752
    const-string v6, "en"

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 6753
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 6760
    :cond_23
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_24

    if-nez v4, :cond_24

    .line 6761
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 6764
    :cond_24
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPasswordMode(Z)V

    .line 6765
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    goto/16 :goto_5

    .line 6751
    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 6774
    :sswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoSpace(Z)V

    .line 6776
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_7

    if-nez v4, :cond_7

    .line 6777
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    .line 6778
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6779
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_26

    .line 6780
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 6781
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 6783
    :cond_26
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    goto/16 :goto_5

    .line 6790
    :sswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setIsEditorMessage(Z)V

    .line 6792
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_7

    if-nez v4, :cond_7

    .line 6795
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    .line 6796
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6797
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_27

    .line 6798
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 6799
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 6801
    :cond_27
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    goto/16 :goto_5

    .line 6808
    :sswitch_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setIsEditorMessage(Z)V

    .line 6810
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_7

    if-nez v4, :cond_7

    .line 6813
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    .line 6814
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6815
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_28

    .line 6816
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 6817
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 6819
    :cond_28
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    goto/16 :goto_5

    .line 6828
    :sswitch_5
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_7

    if-nez v4, :cond_7

    .line 6831
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsAutoCapsOn()Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_7

    .line 6832
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isNextShiftInputMode()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 6833
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-nez v0, :cond_29

    .line 6834
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 6835
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 6837
    :cond_29
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V

    goto/16 :goto_5

    .line 6844
    :sswitch_6
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    .line 6850
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_2a

    if-nez v4, :cond_2a

    .line 6851
    const-string v0, "en"

    .line 6852
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    :goto_f
    if-ge v0, v3, :cond_2a

    .line 6853
    const-string v6, "en"

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 6854
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 6861
    :cond_2a
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_2b

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_2b

    if-nez v4, :cond_2b

    .line 6862
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 6863
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 6864
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 6867
    :cond_2b
    iget v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    const/4 v3, 0x2

    if-le v0, v3, :cond_2c

    .line 6868
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->currSymbolsPageNum:I

    .line 6871
    :cond_2c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setAutoSpace(Z)V

    .line 6872
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setEditorType(I)V

    goto/16 :goto_5

    .line 6852
    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 6876
    :sswitch_7
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    .line 6881
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-eqz v0, :cond_2e

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_2e

    if-nez v4, :cond_2e

    .line 6882
    const-string v0, "en"

    .line 6883
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    :goto_10
    if-ge v0, v3, :cond_2e

    .line 6884
    const-string v6, "en"

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 6885
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 6892
    :cond_2e
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_2f

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_2f

    if-nez v4, :cond_2f

    .line 6893
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    .line 6894
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 6895
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 6899
    :cond_2f
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setEditorType(I)V

    goto/16 :goto_5

    .line 6883
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 6912
    :sswitch_8
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_7

    if-nez v4, :cond_7

    .line 6913
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-nez v0, :cond_7

    goto/16 :goto_5

    .line 6952
    :sswitch_9
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsSettingLangKorean:Z

    if-eqz v0, :cond_31

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_31

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_31

    if-nez v4, :cond_31

    .line 6953
    const-string v0, "en"

    .line 6954
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoListSize()I

    move-result v3

    :goto_11
    if-ge v0, v3, :cond_31

    .line 6955
    const-string v6, "en"

    iget-object v7, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguage:Lcom/sec/android/inputmethod/axt9/AxT9Language;

    invoke-virtual {v7}, Lcom/sec/android/inputmethod/axt9/AxT9Language;->getLanguageInfoList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;

    invoke-virtual {p1}, Lcom/sec/android/inputmethod/axt9/AxT9Language$LanguageInfo;->getLangCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 6956
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSelectLanguage:I

    .line 6963
    :cond_31
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_32

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_32

    if-nez v4, :cond_32

    .line 6964
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 6967
    :cond_32
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPasswordMode(Z)V

    .line 6968
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVoiceInputOn:Z

    goto/16 :goto_5

    .line 6954
    :cond_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 7058
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_6

    .line 7078
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    .line 7098
    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 7121
    :cond_37
    const/high16 v0, 0x2000

    and-int/2addr v0, v2

    if-eqz v0, :cond_38

    .line 7122
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_15

    if-nez v4, :cond_15

    goto/16 :goto_9

    .line 7127
    :cond_38
    const/high16 v0, 0x4000

    and-int/2addr v0, v2

    if-eqz v0, :cond_15

    .line 7128
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartRequested:Z

    if-nez v0, :cond_39

    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsScreenLocked:Z

    if-nez v0, :cond_39

    if-nez v4, :cond_39

    .line 7132
    :cond_39
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setOnlyAbcMode(Z)V

    goto/16 :goto_9

    .line 6613
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_1
    .end packed-switch

    .line 6665
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_9
        :pswitch_7
    .end packed-switch

    .line 6739
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_8
        0x10 -> :sswitch_7
        0x20 -> :sswitch_6
        0x30 -> :sswitch_5
        0x40 -> :sswitch_3
        0x50 -> :sswitch_4
        0x60 -> :sswitch_2
        0x70 -> :sswitch_0
        0x80 -> :sswitch_1
        0x90 -> :sswitch_9
        0xa0 -> :sswitch_0
        0xb0 -> :sswitch_0
        0xc0 -> :sswitch_0
    .end sparse-switch
.end method

.method public setForcedCapslock(Z)V
    .locals 1
    .parameter "capslock"

    .prologue
    .line 8805
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    .line 8807
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mForcedCapslock:Z

    if-eqz v0, :cond_0

    .line 8808
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn()V

    .line 8812
    :goto_0
    return-void

    .line 8810
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->restoreForcedCapslock()V

    goto :goto_0
.end method

.method public setLastEngCapsMode(Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;)V
    .locals 0
    .parameter "lastEngCapsMode"

    .prologue
    .line 8084
    iput-object p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 8085
    return-void
.end method

.method public setLatestTextInputMode()V
    .locals 2

    .prologue
    .line 6173
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getLatestTextInputMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMode(I)V

    .line 6176
    return-void
.end method

.method public setMiniKeyboardInput(Z)V
    .locals 0
    .parameter "isMiniKeyboardInput"

    .prologue
    .line 8032
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mIsMiniKeyboardInput:Z

    .line 8033
    return-void
.end method

.method public setMultiLineEditorflag(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 6517
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mEditorTypeMultiLine:Z

    .line 6518
    return-void
.end method

.method setNonShiftMode()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2461
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 2462
    .local v0, alreadyNonshift:Z
    :goto_0
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 2463
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 2464
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-nez v2, :cond_2

    .line 2479
    :cond_0
    :goto_1
    return-void

    .end local v0           #alreadyNonshift:Z
    :cond_1
    move v0, v4

    .line 2461
    goto :goto_0

    .line 2467
    .restart local v0       #alreadyNonshift:Z
    :cond_2
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v2, v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 2468
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2469
    .local v1, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    if-eqz v1, :cond_3

    .line 2470
    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v1, v2}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 2472
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2473
    sget-object v2, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->NONE:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 2475
    :cond_4
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2, v4}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 2476
    if-nez v0, :cond_0

    .line 2477
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto :goto_1
.end method

.method public setPopupMenuShown(Z)V
    .locals 0
    .parameter "shown"

    .prologue
    .line 6488
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupMenuShown:Z

    .line 6489
    return-void
.end method

.method setShiftOn()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2524
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsShiftMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    if-nez v3, :cond_1

    move v0, v5

    .line 2525
    .local v0, alreadyShifted:Z
    :goto_0
    invoke-direct {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setShiftMode(Z)V

    .line 2526
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3, v5}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setOneTimeShift(Z)V

    .line 2527
    invoke-direct {p0, v4}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCapsLockOn(Z)V

    .line 2528
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    if-nez v3, :cond_2

    .line 2545
    :cond_0
    :goto_1
    return-void

    .end local v0           #alreadyShifted:Z
    :cond_1
    move v0, v4

    .line 2524
    goto :goto_0

    .line 2531
    .restart local v0       #alreadyShifted:Z
    :cond_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v3, v4}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 2532
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getKeyboard()Landroid/inputmethodservice/Keyboard;

    move-result-object v1

    check-cast v1, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;

    .line 2533
    .local v1, keyboard:Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;
    if-eqz v1, :cond_3

    .line 2534
    iget-boolean v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v1, v3}, Lcom/sec/android/inputmethod/axt9/AxT9Keyboard;->setShiftLocked(Z)V

    .line 2536
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isAlphabetInputMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2537
    sget-object v3, Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;->SHIFTED:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    iput-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLastEngCapsMode:Lcom/sec/android/inputmethod/axt9/AxT9IME$EnglishCapsMode;

    .line 2539
    :cond_4
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->isAmbiguousMode()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isHangulInputMode()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move v2, v5

    .line 2541
    .local v2, shiftMode:B
    :goto_2
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3, v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->setShiftMode(B)V

    .line 2542
    if-nez v0, :cond_0

    .line 2543
    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->invalidateAll()V

    goto :goto_1

    .line 2539
    .end local v2           #shiftMode:B
    :cond_6
    const/4 v3, 0x2

    move v2, v3

    goto :goto_2
.end method

.method public setSpecialActionflag(Z)V
    .locals 0
    .parameter "action"

    .prologue
    .line 6531
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSpecialActionEditor:Z

    .line 6532
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZZB)V
    .locals 1
    .parameter
    .parameter "completions"
    .parameter "typedWordValid"
    .parameter "bActiveWordIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZB)V"
        }
    .end annotation

    .prologue
    .line 4661
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    if-eqz v0, :cond_0

    .line 4662
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->setSuggestions(Ljava/util/List;ZZB)V

    .line 4664
    :cond_0
    return-void
.end method

.method public setXt9SettingEnabled(Z)V
    .locals 3
    .parameter

    .prologue
    .line 8106
    iput-boolean p1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    .line 8107
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mContext:Lcom/sec/android/inputmethod/axt9/AxT9IME;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 8108
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 8109
    const-string v1, "xt9_enabled"

    iget-boolean v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXt9Enabled:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 8110
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 8112
    if-nez v0, :cond_0

    .line 8113
    const-string v0, "AxT9IME"

    const-string v1, "setXt9SettingEnabled(): can not write a value of the XT9 enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8115
    :cond_0
    return-void
.end method

.method public showInputLanguageSelectOptionMenu()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 6035
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isPopupMenuShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6093
    :goto_0
    return-void

    .line 6038
    :cond_0
    invoke-virtual {p0, v5}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 6040
    sget-object v0, Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;->LANGUAGE:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mPopupType:Lcom/sec/android/inputmethod/axt9/AxT9IME$PopupType;

    .line 6041
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getLanguageInfoListSize()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mInputLanguageString:[Ljava/lang/CharSequence;

    .line 6042
    new-array v0, v5, [S

    .line 6043
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    move v3, v2

    .line 6045
    :goto_1
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 6046
    iget-object v4, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aget-object v0, v4, v0

    aput-object v0, v1, v3

    .line 6047
    add-int/lit8 v0, v3, 0x1

    .line 6045
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    .line 6050
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6051
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 6052
    const v2, 0x7f0a0014

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onPopupCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6054
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mLanguageIndex:Ljava/util/ArrayList;

    iget v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCurrentLang:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    new-instance v3, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;

    invoke-direct {v3, p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME$24;-><init>(Lcom/sec/android/inputmethod/axt9/AxT9IME;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6085
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 6086
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    .line 6087
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onPopupDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 6088
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 6089
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 6090
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 6091
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 6092
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mOptionDlg:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public showWindow(Z)V
    .locals 1
    .parameter "showInput"

    .prologue
    .line 6217
    invoke-direct {p0, p1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setFlagIsVisibleWindow(Z)V

    .line 6218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setPopupMenuShown(Z)V

    .line 6221
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->showWindow(Z)V

    .line 6223
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->sendInputLanguage()V

    .line 6224
    return-void
.end method

.method public swipeDown()V
    .locals 1

    .prologue
    .line 4992
    iget-boolean v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSweepingOn:Z

    if-nez v0, :cond_0

    .line 4995
    :goto_0
    return-void

    .line 4994
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleClose()V

    goto :goto_0
.end method

.method public swipeLeft()V
    .locals 2

    .prologue
    .line 5001
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSweepingOn:Z

    if-nez v1, :cond_0

    .line 5015
    :goto_0
    return-void

    .line 5003
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v0

    .line 5004
    .local v0, enableInputMode:[I
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleModeChange([IZ)V

    goto :goto_0
.end method

.method public swipeRight()V
    .locals 2

    .prologue
    .line 5021
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSweepingOn:Z

    if-nez v1, :cond_0

    .line 5035
    :goto_0
    return-void

    .line 5023
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentEnableInputMode()[I

    move-result-object v0

    .line 5024
    .local v0, enableInputMode:[I
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->handleModeChange([IZ)V

    goto :goto_0
.end method

.method public swipeUp()V
    .locals 0

    .prologue
    .line 5039
    return-void
.end method

.method public updateComposerFromXT9()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 4670
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->updateSelectList()B

    move-result v1

    .line 4672
    .local v1, vTotalWords:I
    if-lez v1, :cond_3

    .line 4673
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4674
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getInputWords()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4675
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4676
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_0

    .line 4677
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mComposing:Ljava/lang/StringBuilder;

    invoke-interface {v0, v2, v4}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 4679
    :cond_0
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getSuggetionFromXT9()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v3}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v3

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setSuggestions(Ljava/util/List;ZZB)V

    .line 4680
    iget-object v2, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCandidateViewMgr:Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;

    invoke-virtual {v2}, Lcom/sec/android/inputmethod/axt9/AxT9CandidateViewMgr;->getSuggestionListNum()I

    move-result v2

    if-gtz v2, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isCandidateViewShown()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getIsPasswordMode()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    :goto_0
    invoke-virtual {p0, v2}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->setCandidatesViewShown(Z)V

    .line 4685
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :goto_1
    return-void

    .restart local v0       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    move v2, v5

    .line 4680
    goto :goto_0

    .line 4683
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->initSuggestionList()V

    goto :goto_1
.end method

.method public updateFullscreenMode()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 7418
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isStartedTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mRestartInGSearch:Z

    if-nez v1, :cond_0

    .line 7420
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->multitap:Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;

    invoke-direct {p0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->stopTimer(Lcom/sec/android/inputmethod/axt9/AxT9IME$Run;)V

    .line 7421
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onMultitapTimeOut()V

    .line 7424
    :cond_0
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->getInputMethodType()I

    move-result v0

    .line 7425
    .local v0, inputMethodType:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v1, :cond_1

    .line 7426
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeAllMsg()V

    .line 7430
    :cond_1
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-eqz v1, :cond_2

    if-eq v0, v3, :cond_2

    .line 7431
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setBkInputMethodType(I)V

    .line 7432
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-nez v1, :cond_5

    .line 7433
    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->onCreateInputView()Landroid/view/View;

    .line 7440
    :cond_2
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->misLandscapeMode:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->isPopupMenuShown()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v1, :cond_4

    .line 7441
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->removeActionPopup()V

    .line 7447
    :cond_4
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->updateFullscreenMode()V

    .line 7448
    return-void

    .line 7435
    :cond_5
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v1, v3}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->setInputMethodType(I)V

    goto :goto_0
.end method

.method public updateShiftKeyState(Landroid/view/inputmethod/EditorInfo;)V
    .locals 2
    .parameter "attr"

    .prologue
    .line 5609
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mSipMgr:Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;

    invoke-virtual {v0}, Lcom/sec/android/inputmethod/axt9/AxT9SipMgr;->isTextMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5610
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mKeyboardView:Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;

    iget-boolean v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mCapsLock:Z

    invoke-virtual {v0, v1}, Lcom/sec/android/inputmethod/axt9/AxT9KeyboardHwrView;->setShifted(Z)Z

    .line 5612
    :cond_0
    return-void
.end method

.method public updateUserSelWord()V
    .locals 2

    .prologue
    .line 4646
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->getActiveWordIndexOfSelList()B

    move-result v0

    .line 4647
    .local v0, ActiveIndex:I
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->noteWordDone(I)V

    .line 4648
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1, v0}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->selectWord(I)V

    .line 4649
    iget-object v1, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mXT9Service:Lcom/sec/android/inputmethod/axt9/AxT9CoreService;

    invoke-virtual {v1}, Lcom/sec/android/inputmethod/axt9/AxT9CoreService;->clearAllSymbs()S

    .line 4650
    return-void
.end method

.method public vibrate()V
    .locals 3

    .prologue
    .line 5279
    invoke-direct {p0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getFlagIsVibrateOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5328
    :goto_0
    return-void

    .line 5283
    :cond_0
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_1

    .line 5284
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Lcom/sec/android/inputmethod/axt9/AxT9IME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVibrator:Landroid/os/Vibrator;

    .line 5286
    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "SCH-i520"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5287
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 5289
    :cond_2
    iget-object v0, p0, Lcom/sec/android/inputmethod/axt9/AxT9IME;->mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrateImmVibe(I)V

    goto :goto_0
.end method
