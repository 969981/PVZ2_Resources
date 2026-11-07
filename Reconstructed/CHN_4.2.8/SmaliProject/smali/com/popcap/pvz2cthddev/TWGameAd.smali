.class public Lcom/popcap/pvz2cthddev/TWGameAd;
.super Ljava/lang/Object;
.source "TWGameAd.java"


# static fields
.field public static final AD_RESULT_CLICKED:I = 0x3

.field public static final AD_RESULT_CLOSED:I = 0x2

.field public static final AD_RESULT_FAILED:I = 0x1

.field public static final AD_RESULT_FINISHED:I = 0x4

.field public static final AD_RESULT_SUCCESS:I = 0x0

.field public static final AD_TYPE_BANNER:I = 0x2

.field public static final AD_TYPE_MEDIA:I = 0x1

.field public static final AD_TYPE_SCREEN:I = 0x0

.field public static final BANNER_AD_BATTLE_STATEMENT:I = 0x3e

.field public static final BANNER_AD_BOX:I = 0x6

.field public static final BANNER_AD_WORLD_SELECT:I = 0x3d

.field public static final BANNER_BOARD_TOP:I = 0x2

.field public static final BANNER_FIGHT_FINISH:I = 0x3

.field public static final BANNER_H5_LEFT:I = 0x4

.field public static final BANNER_H5_RIGHT:I = 0x5

.field public static final BANNER_SELECT_LEVEL:I = 0x1

.field public static mActivitySize:I


# instance fields
.field private adsData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/talkweb/twgame/bean/NativeData;",
            ">;"
        }
    .end annotation
.end field

.field mActivityInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCheckedActivityInfos:Z

.field public mHasAdFinished:Z

.field mMediaAvailable:Z

.field public mNativeDriverPtr:J

.field private viewMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 2

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->mHasAdFinished:Z

    .line 74
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->viewMap:Ljava/util/Map;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->adsData:Ljava/util/Map;

    .line 102
    iput-wide p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->mNativeDriverPtr:J

    .line 103
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->mMediaAvailable:Z

    .line 104
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->mCheckedActivityInfos:Z

    return-void
.end method

.method static synthetic access$000(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->adsData:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/popcap/pvz2cthddev/TWGameAd;)Ljava/util/Map;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->viewMap:Ljava/util/Map;

    return-object p0
.end method

.method public static initImageLoader(Landroid/app/Activity;)V
    .locals 3

    .line 82
    new-instance v0, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v0, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x5

    .line 83
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    const/4 v1, 0x3

    .line 84
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 85
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 86
    sget-object v1, Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingOrder(Lcom/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 87
    new-instance v1, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    const/high16 v2, 0x300000

    invoke-direct {v1, v2}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache(Lcom/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    const/high16 v1, 0x500000

    .line 88
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    const/16 v1, 0x1e0

    const/16 v2, 0x320

    .line 89
    invoke-virtual {v0, v1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheExtraOptions(II)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    const/16 v1, 0x32

    .line 90
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSizePercentage(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    const/high16 v2, 0x3200000

    .line 91
    invoke-virtual {v0, v2}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 92
    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount(I)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 93
    new-instance v1, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;

    invoke-direct {v1}, Lcom/nostra13/universalimageloader/cache/disc/naming/Md5FileNameGenerator;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lcom/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 94
    new-instance v1, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;

    invoke-direct {v1, p0}, Lcom/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->imageDownloader(Lcom/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 95
    invoke-static {}, Lcom/nostra13/universalimageloader/core/DisplayImageOptions;->createSimple()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions(Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 96
    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeDebugLogs()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    .line 97
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object p0

    invoke-virtual {v0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    return-void
.end method


# virtual methods
.method public CheckActivityInfos()V
    .locals 2

    .line 731
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->mCheckedActivityInfos:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 733
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->mCheckedActivityInfos:Z

    .line 735
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->mActivityInfos:Ljava/util/Map;

    .line 737
    const-string v0, "GetActivityCheck"

    const-string v1, "CheckPointCheckInfos"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance v0, Lcom/popcap/pvz2cthddev/TWGameAd$9;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$9;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd;)V

    invoke-static {v0}, Lcom/talkweb/twgame/TwGameSDK;->activeReward(Lcom/talkweb/twgame/callback/ActiveCallback;)V

    return-void
.end method

.method public CloseBanner(I)V
    .locals 2

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CloseBanner id : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/TWGameAd$8;

    invoke-direct {v1, p0, p1}, Lcom/popcap/pvz2cthddev/TWGameAd$8;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd;I)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public GetActivityInfos(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 705
    iget-boolean v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->mCheckedActivityInfos:Z

    if-eqz v0, :cond_1

    .line 707
    const-string v0, "GetPoint"

    const-string v1, "GetActivityCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->mActivityInfos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 710
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 712
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 714
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetKey: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GetValue: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 718
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 721
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public InitializeSDK(Ljava/lang/String;)V
    .locals 1

    .line 109
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/talkweb/twgame/TwGameSDK;->init(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public IsMediaAvailable(I)Z
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IsMediaAvailable, mediaPosition is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewAdCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Lcom/popcap/pvz2cthddev/TWGameAd$1;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$1;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd;)V

    invoke-static {p1, v0}, Lcom/talkweb/twgame/TwGameSDK;->queryMediaState(ILcom/talkweb/twgame/callback/QueryMediaStateCallback;)V

    .line 132
    iget-boolean p1, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->mMediaAvailable:Z

    return p1
.end method

.method public LoadBanner(I)V
    .locals 2

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    return-void

    .line 302
    :pswitch_0
    sget v0, Lcom/talkweb/twgame/Param/GameConstant;->NATIVE_BANNER_FLOAT_CHEST_PVZ:I

    goto :goto_0

    .line 298
    :pswitch_1
    sget v0, Lcom/talkweb/twgame/Param/GameConstant;->NATIVE_BANNER_H5GAME_R_PVZ:I

    goto :goto_0

    .line 294
    :pswitch_2
    sget v0, Lcom/talkweb/twgame/Param/GameConstant;->NATIVE_BANNER_H5GAME_LR_PVZ:I

    goto :goto_0

    .line 290
    :pswitch_3
    sget v0, Lcom/talkweb/twgame/Param/GameConstant;->NATIVE_BANNER_FIGHT_RESULT_PVZ:I

    goto :goto_0

    .line 286
    :pswitch_4
    sget v0, Lcom/talkweb/twgame/Param/GameConstant;->NATIVE_BANNER_FIGHTING_PVZ:I

    goto :goto_0

    .line 282
    :pswitch_5
    sget v0, Lcom/talkweb/twgame/Param/GameConstant;->NATIVE_BANNER_FIGHT_Begin_PVZ:I

    .line 317
    :cond_0
    :goto_0
    new-instance v1, Lcom/popcap/pvz2cthddev/TWGameAd$5;

    invoke-direct {v1, p0, p1}, Lcom/popcap/pvz2cthddev/TWGameAd$5;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd;I)V

    invoke-static {v1, v0}, Lcom/talkweb/twgame/TwGameSDK;->showNativeAD(Lcom/talkweb/twgame/callback/NativeCallback;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public native Native_BannerLoad(ZI)V
.end method

.method public native Native_WatchAdComplete(JII)V
.end method

.method public ShowBanner1(ILjava/lang/String;)V
    .locals 2

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShowBanner1 id : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " world : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/TWGameAd$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/popcap/pvz2cthddev/TWGameAd$6;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ShowBanner2(I)V
    .locals 2

    .line 528
    invoke-static {}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->instance()Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;

    move-result-object v0

    new-instance v1, Lcom/popcap/pvz2cthddev/TWGameAd$7;

    invoke-direct {v1, p0, p1}, Lcom/popcap/pvz2cthddev/TWGameAd$7;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd;I)V

    invoke-virtual {v0, v1}, Lcom/popcap/pvz2cthddev/SexyAppFrameworkActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ShowMedia()V
    .locals 1

    const/4 v0, 0x0

    .line 188
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->mHasAdFinished:Z

    .line 189
    new-instance v0, Lcom/popcap/pvz2cthddev/TWGameAd$3;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$3;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd;)V

    invoke-static {v0}, Lcom/talkweb/twgame/TwGameSDK;->showMedia(Lcom/talkweb/twgame/callback/MediaCallback;)V

    return-void
.end method

.method public ShowMediaParam(I)V
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ShowMediaParam, mediaPosition is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewAdCheck"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/popcap/pvz2cthddev/TWGameAd;->mHasAdFinished:Z

    .line 235
    new-instance v0, Lcom/popcap/pvz2cthddev/TWGameAd$4;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$4;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd;)V

    invoke-static {v0, p1}, Lcom/talkweb/twgame/TwGameSDK;->showMedia(Lcom/talkweb/twgame/callback/MediaCallback;I)V

    return-void
.end method

.method public ShowScreenView(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 153
    sget p1, Lcom/talkweb/twgame/Param/GameConstant;->SCREENVIEWPOSITION_INIT:I

    goto :goto_0

    .line 150
    :cond_0
    sget p1, Lcom/talkweb/twgame/Param/GameConstant;->SCREENVIEWPOSITION_EXIT:I

    goto :goto_0

    .line 147
    :cond_1
    sget p1, Lcom/talkweb/twgame/Param/GameConstant;->SCREENVIEWPOSITION_RESULT:I

    goto :goto_0

    .line 144
    :cond_2
    sget p1, Lcom/talkweb/twgame/Param/GameConstant;->SCREENVIEWPOSITION_PAUSE:I

    goto :goto_0

    .line 141
    :cond_3
    sget p1, Lcom/talkweb/twgame/Param/GameConstant;->SCREENVIEWPOSITION_INIT:I

    .line 156
    :goto_0
    new-instance v0, Lcom/popcap/pvz2cthddev/TWGameAd$2;

    invoke-direct {v0, p0}, Lcom/popcap/pvz2cthddev/TWGameAd$2;-><init>(Lcom/popcap/pvz2cthddev/TWGameAd;)V

    invoke-static {v0, p1}, Lcom/talkweb/twgame/TwGameSDK;->showScreenView(Lcom/talkweb/twgame/callback/ScreenCallback;I)V

    return-void
.end method
