.class public Lcn/sharesdk/douyin/b;
.super Ljava/lang/Object;
.source "DouyinHandler.java"


# instance fields
.field private a:Lcn/sharesdk/framework/Platform;

.field private b:Lcn/sharesdk/framework/Platform$ShareParams;

.field private c:Lcn/sharesdk/framework/PlatformActionListener;


# direct methods
.method public constructor <init>(Lcn/sharesdk/framework/Platform;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcn/sharesdk/douyin/b;->a:Lcn/sharesdk/framework/Platform;

    return-void
.end method


# virtual methods
.method public a()Lcn/sharesdk/framework/Platform;
    .locals 1

    .line 29
    iget-object v0, p0, Lcn/sharesdk/douyin/b;->a:Lcn/sharesdk/framework/Platform;

    return-object v0
.end method

.method public a(Lcn/sharesdk/framework/Platform$ShareParams;Lcn/sharesdk/framework/PlatformActionListener;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcn/sharesdk/douyin/b;->b:Lcn/sharesdk/framework/Platform$ShareParams;

    .line 21
    iput-object p2, p0, Lcn/sharesdk/douyin/b;->c:Lcn/sharesdk/framework/PlatformActionListener;

    return-void
.end method
