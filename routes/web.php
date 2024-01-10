<?php

use App\Models\User;

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Backend\AdminProfileController;
use App\Http\Controllers\Frontend\IndexController;
use App\Http\Controllers\Backend\CategoryController;
use App\Http\Controllers\Backend\SubCategoryController;
use App\Http\Controllers\Backend\ContentController;
use App\Http\Controllers\Backend\GalleryController;
use App\Http\Controllers\Backend\PortfolioController;
use App\Http\Controllers\Backend\ClientController;
use App\Http\Controllers\Backend\ContactController;
use App\Http\Controllers\Backend\BlogController;
use App\Http\Controllers\Frontend\ContactUsController;
use App\Http\Controllers\Backend\PolicyController;
use App\Http\Controllers\Backend\IndController;
use App\Http\Controllers\Backend\basicsettingController;
use App\Http\Controllers\Backend\slideController;
use App\Http\Controllers\Backend\othersController;
use App\Http\Controllers\Backend\productController;
use App\Http\Controllers\Backend\adminInvoiceController;
use App\Http\Controllers\Frontend\searchController;
use App\Http\Controllers\Frontend\userLoginController;
use App\Http\Controllers\Frontend\orderController;
use App\Http\Controllers\localizationControllar;
use App\Models\product;
use FontLib\Table\Type\name;
use App\Models\Articles;
use App\Models\Language;


// database change translatoion


Route::get('/test', function()
{

// Create an article with translations
$article = Articles::create(['status' => true]);

$english = Language::where('code', 'en')->first();
$spanish = Language::where('code', 'bn')->first();

$article->translations()->create([
    'lang_id' => $english->id,
    'title' => 'English Title',
    'description' => 'English Description',
]);

$article->translations()->create([
    'lang_id' => $spanish->id,
    'title' => 'bangla Title',
    'description' => 'bangla Description',
]);


    return back();
});


///admin Invoice
Route::prefix('admin')->group(function (){

Route::get('/invoice',[adminInvoiceController::class, 'InvoiceIndex'])->name('adminInvoiceIndex');

Route::post('/invoice/store',[adminInvoiceController::class, 'StoreInvoice'])->name('invoice-store-admin');



});









//localization
Route::get('/local/{locale}',[localizationControllar::class, 'setLang'])->name('localization');

//frontend show url
Route::get('/', function()
{
    $products = product::where('status',1)->get();
    return view('frontend.index',['products'=>$products]);
});

///admin login
Route::prefix('admin')->group(function (){

    Route::get('/login',[AdminController::class, 'Index'])->name('login_form');

    Route::post('/login/owner',[AdminController::class, 'Login'])->name('admin.login');

    Route::get('/dashboard',[AdminController::class, 'Dashboard'])->name('admin.dashboard')->middleware('admin');

    Route::get('/logout',[AdminController::class, 'AdminLogout'])->name('admin.logout');

    Route::get('/profile',[AdminProfileController::class, 'AdminProfile'])->name('admin.profile');

    Route::get('/profile/edit', [AdminProfileController::class, 'AdminProfileEdit'])->name('admin.profile.edit');

    Route::post('/profile/store', [AdminProfileController::class, 'AdminProfileStore'])->name('admin.profile.store');

    Route::get('/change/password', [AdminProfileController::class, 'AdminChangePassword'])->name('admin.change.password');

    Route::post('/update/change/password', [AdminProfileController::class, 'AdminUpdateChangePassword'])->name('update.change.password');



});

//user login registration
Route::prefix('user')->group(function (){

    Route::get('/login',[userLoginController::class, 'Index'])->name('login-index');
    Route::post('/login/success',[userLoginController::class, 'loginSuccess'])->name('login-user');
    Route::get('/logout',[userLoginController::class, 'logOut'])->name('logout-user');

    Route::get('/register',[userLoginController::class, 'IndexRegister'])->name('register-index');
    Route::post('/register/store',[userLoginController::class, 'registerStore'])->name('register-store');
    //profile
    Route::get('/profile',[userLoginController::class, 'userProfile'])->name('user-profile-index');
    Route::get('/order',[userLoginController::class, 'userOrder'])->name('order-show-user-profile');
    Route::get('/profile/edit',[userLoginController::class, 'userProfileEdit'])->name('user-profile-edit');
    Route::post('/image/update',[userLoginController::class, 'userProfileImage'])->name('userProfileImage');
    Route::post('/info/update',[userLoginController::class, 'userInfo'])->name('userinfo-update');
    //user product show
    Route::get('/product/order',[userLoginController::class, 'productOrderIndex'])->name('product-order');
    Route::get('/product/invoice/{id}',[userLoginController::class, 'productOrderDownload'])->name('product-download');


});

//frontend index page
Route::prefix('user')->group(function (){
    Route::get('/service/details/{id}', [IndexController::class, 'serviceDetailsPage'])->name('details-service-page');
    Route::get('/product/details/{id}', [IndexController::class, 'ProductDetailsPage'])->name('product-preview');


});

//page index
Route::prefix('page')->group(function (){
    Route::get('/service', [IndexController::class, 'serviceHeaderPage'])->name('service-index-page');
    Route::get('/work', [IndexController::class, 'workHeaderPage'])->name('work-index-page');
    Route::get('/parts', [IndexController::class, 'sparePartHeaderPage'])->name('SpareParts-index-page');



});




//order service
Route::prefix('order')->group(function (){

    Route::get('/checkout/service/{product_id}',[orderController::class, 'checkOutIndex'])->name('checkOut-index');
    Route::get('/checkout/work/{product_id}',[orderController::class, 'checkOutWorkIndex'])->name('checkOut-work-index');
    Route::post('/checkout/store',[orderController::class, 'checkStore'])->name('checkout-store');
    Route::get('/all',[orderController::class, 'allOrder'])->name('order-show');
    Route::post('/status/update',[orderController::class, 'statusUpdate'])->name('status-update');
    Route::get('/invoice/{id}',[orderController::class, 'invoice'])->name('invoice');
    Route::get('/payment',[orderController::class, 'userPayment'])->name('order-user-payment');
    Route::get('/user/payment/download/{id}',[orderController::class, 'userPaymentDownload'])->name('user-download-payment');

    Route::get('/user/payment/',[orderController::class, 'paymentOrder'])->name('order-payment-index');
    Route::get('/user/payment/invoice/{id}',[orderController::class, 'paymentInvoiceIndex'])->name('payment-invoice');
    Route::post('/user/payment/invoice/store',[orderController::class, 'paymentInvoiceStore'])->name('payment.invoice.store');
    Route::get('/admin/download/{id}',[orderController::class, 'InvoiceDownload'])->name('admin-download-invoice');
    Route::get('/admin/invoice/delete/{id}',[orderController::class, 'InvoiceAdminDelete'])->name('payment.delete');


//product order admin
Route::get('/product/all',[orderController::class, 'ProductOrderIndex'])->name('product-order-show');
Route::get('/product/invoice/{id}',[orderController::class, 'ProductOrderInvoice'])->name('admin-product-invoice');
Route::post('/status/update',[orderController::class, 'ProductstatusUpdate'])->name('product-status-update');


});

/*-------------End Admin route--------*/



// Admin Product All Routes

Route::prefix('product')->group(function(){

    Route::get('/add', [productController::class, 'ProductIndex'])->name('product-index');
    Route::get('/manage', [productController::class, 'ProductManageIndex'])->name('product-manage');
    Route::post('/store', [productController::class, 'ProductStore'])->name('product-store');

    Route::get('/edit/{id}', [productController::class, 'EditProduct'])->name('product.edit');

    Route::post('/update', [productController::class, 'ProductUpdate'])->name('product-update');

    Route::get('/inactive/{id}', [productController::class, 'ProductInactive'])->name('product.inactive');

    Route::get('/active/{id}', [productController::class, 'productActive'])->name('product.active');

    Route::get('/delete/{id}', [productController::class, 'ProductDelete'])->name('product.delete');

    //frontend check out product

    Route::get('/checkout/{id}', [productController::class, 'productCheckOutIndex'])->name('product.checkout');
    Route::post('/checkout/store', [productController::class, 'productCheckOutStore'])->name('product-checkout-store');


});


// Admin Category All Routes

Route::prefix('category')->group(function(){

    Route::get('/view', [CategoryController::class, 'CategoryView'])->name('all.category');

    Route::post('/store', [CategoryController::class, 'CategoryStore'])->name('category.store');

    Route::get('/edit/{id}', [CategoryController::class, 'CategoryEdit'])->name('category.edit');

    Route::post('/update/{id}', [CategoryController::class, 'CategoryUpdate'])->name('category.update');

    Route::get('/delete/{id}', [CategoryController::class, 'CategoryDelete'])->name('category.delete');




// all Sub Category

Route::get('/sub/view', [SubCategoryController::class, 'SubCategoryView'])->name('all.subcategory');

Route::post('/sub/store', [SubCategoryController::class, 'SubCategoryStore'])->name('subcategory.store');

Route::get('/sub/edit/{id}', [SubCategoryController::class, 'SubCategoryEdit'])->name('subcategory.edit');

Route::get('/subcategory/ajax/{category_id}', [SubCategoryController::class, 'GetSubCategory']);

Route::post('/sub/update', [SubCategoryController::class, 'SubCategoryUpdate'])->name('subcategory.update');

Route::get('/sub/delete/{id}', [SubCategoryController::class, 'SubCategoryDelete'])->name('subcategory.delete');


// all child Category

Route::get('/child/view', [SubCategoryController::class, 'ChildCategoryView'])->name('all.childcategory');

Route::post('/child/store', [SubCategoryController::class, 'ChildCategoryStore'])->name('childcategory.store');

Route::get('/child/edit/{id}', [SubCategoryController::class, 'ChildCategoryEdit'])->name('childcategory.edit');

Route::get('/childcategory/ajax/{category_id}', [SubCategoryController::class, 'GetChildCategory']);

Route::post('/child/update', [SubCategoryController::class, 'CategoryChildUpdate'])->name('childcategory.update');

Route::get('/child/delete/{id}', [SubCategoryController::class, 'ChildCategoryDelete'])->name('childcategory.delete');



    });


// Admin Content All Routes
Route::prefix('service')->group(function(){

    Route::get('/add', [ContentController::class, 'AddContent'])->name('add-content');

    Route::post('/store', [ContentController::class, 'StoreContent'])->name('content-store');

    Route::get('/manage', [ContentController::class, 'ManageContent'])->name('manage-content');

    Route::get('/edit/{id}', [ContentController::class, 'EditContent'])->name('content.edit');

    Route::post('/data/update', [ContentController::class, 'ContentDataUpdate'])->name('content-update');

    // Route::post('/thamble/update', [ContentController::class, 'ThambleImageUpdate'])->name('update-services-thamble');

    Route::get('/inactive/{id}', [ContentController::class, 'ServicesInactive'])->name('services.inactive');

    Route::get('/active/{id}', [ContentController::class, 'ServicesActive'])->name('services.active');

    Route::get('/delete/{id}', [ContentController::class, 'ServicesDelete'])->name('services.delete');

});

// Admin gallery All Routes

Route::prefix('gallery')->group(function(){

    Route::get('/add', [GalleryController::class, 'AddGallery'])->name('add-gallery');

    Route::post('/store', [GalleryController::class, 'StoreGallery'])->name('gallery-store');

    Route::get('/manage', [GalleryController::class, 'ManageGallery'])->name('manage-gallery');

    Route::get('/edit/{id}', [GalleryController::class, 'EditGallery'])->name('gallery-edit');

    Route::post('/update', [GalleryController::class, 'GalleryUpdate'])->name('gallery-update');

    Route::get('/inactive/{id}', [GalleryController::class, 'GalleryInactive'])->name('gallery.inactive');

    Route::get('/active/{id}', [GalleryController::class, 'GalleryActive'])->name('gallery.active');

    Route::get('/delete/{id}', [GalleryController::class, 'GalleryDelete'])->name('gallery.delete');

});

// Admin Portfolio All Routes

Route::prefix('portfolio')->group(function(){

    Route::get('/add', [PortfolioController::class, 'AddPortfolio'])->name('add-portfolio');

    Route::post('/store', [PortfolioController::class, 'StorePortfolio'])->name('portfolio-store');

    Route::get('/manage', [PortfolioController::class, 'ManagePortfolio'])->name('manage-portfolio');

    Route::get('/edit/{id}', [PortfolioController::class, 'EditPortfolio'])->name('portfolio-edit');

    Route::post('/update', [PortfolioController::class, 'PortfolioUpdate'])->name('portfolio-update');

    Route::post('/thamble/update', [ContentController::class, 'ThambleImageUpdate'])->name('update-services-thamble');

    Route::get('/inactive/{id}', [PortfolioController::class, 'PortfolioInactive'])->name('portfolio.inactive');

    Route::get('/active/{id}', [PortfolioController::class, 'PortfolioActive'])->name('portfolio.active');

    Route::get('/delete/{id}', [PortfolioController::class, 'PortfolioDelete'])->name('portfolio-delete');

});

// Admin Others All Routes

Route::prefix('car')->group(function(){

    Route::get('/year', [othersController::class, 'AddYear'])->name('year-view');
    Route::post('/store', [othersController::class, 'StoreCarNum'])->name('carYear-store');
    Route::get('/year/dele/{id}', [othersController::class, 'carYearDelete'])->name('carYear.delete');
    //metro name route
    Route::get('/metro', [othersController::class, 'AddMetro'])->name('metro-view');
    Route::post('/metro/store', [othersController::class, 'StoreMetro'])->name('metro-store');
    Route::get('/metro/dele/{id}', [othersController::class, 'metroDelete'])->name('metroDelete');
    //letter name route
    Route::get('/letter', [othersController::class, 'AddLetter'])->name('letter-view');
    Route::post('/letter/store', [othersController::class, 'StoreLetter'])->name('letter-store');
    Route::get('/letter/dele/{id}', [othersController::class, 'letterDelete'])->name('letterDelete');
    //spare part name route
    Route::get('/spare/part', [othersController::class, 'AddSparePart'])->name('spare-part-view');
    Route::post('/spare/store', [othersController::class, 'StoreSparepart'])->name('sparepart-store');
    Route::get('/spare/dele/{id}', [othersController::class, 'sparepartDelete'])->name('sparepart-Delete');


});

// Admin Client All Routes

Route::prefix('client')->group(function(){

    Route::get('/add', [ClientController::class, 'Addclient'])->name('add-client');

    Route::post('/store', [ClientController::class, 'StoreClient'])->name('client-store');

    Route::get('/manage', [ClientController::class, 'ManageClient'])->name('manage-client');

    Route::get('/edit/{id}', [ClientController::class, 'EditClient'])->name('client.edit');

    Route::post('/update', [ClientController::class, 'ClientUpdate'])->name('client-update');

    Route::get('/delete/{id}', [ClientController::class, 'clientDelete'])->name('client.delete');

});

//Frontend search
Route::get('/search', [searchController::class, 'search'])->name('search');
Route::get('/search/input', [searchController::class, 'searchInput'])->name('search-input');


// Frontend Product Details Page url
Route::get('/services/details/{id}', [IndexController::class, 'ServicesDetails'])->name('serviceDetails');

// Frontend SubCategory wise Data
Route::get('/services/subcategory/{subcat_id}/{slug}', [IndexController::class, 'SubCatWiseServices']);

// Frontend Sub-SubCategory wise Data
Route::get('/childcategory/services/{childcat_id}/{slug}', [IndexController::class, 'ChildCatWiseServices']);


// contact
Route::get('contact/page', [ContactController::class, 'Contact'])->name('contact-page');
Route::post('contact/form', [ContactController::class, 'ContactForm'])->name('contact-form');
Route::get('admin/all/message', [ContactController::class, 'AdminAllMessage'])->name('all-message');

// contact us
Route::get('contact/us', [ContactUsController::class, 'ContactUs'])->name('contact-us');

 // view all main cat
Route::get('all/client', [ContactUsController::class, 'AllClients'])->name('all-clients');
Route::get('all/portfolios', [ContactUsController::class, 'AllPortfolios'])->name('all-portfolios');
Route::get('all/services', [ContactUsController::class, 'AllServices'])->name('all-services');
Route::get('all/creative', [ContactUsController::class, 'AllCreative'])->name('all-creative');

// blog index
Route::get('all/blog', [ContactUsController::class, 'AllBlog'])->name('all-blog');
Route::get('view/blog{id}', [IndexController::class, 'ViewBlog'])->name('view-blog');

// about us
Route::get('about/us', [ContactUsController::class, 'AboutUs'])->name('about-us');

// Career
Route::get('technoval/career', [ContactUsController::class, 'TechnovalCareer'])->name('technoval-career');

// digital marketing
Route::get('digital/marketing', [ContactUsController::class, 'DigitalMarketing'])->name('digital-marketing');

//privacy
Route::get('privacy/view', [ContactUsController::class, 'PrivacyView'])->name('privacy-view');
Route::get('terms/view', [ContactUsController::class, 'TermsView'])->name('terms-view');

// blog
Route::get('blog/add', [BlogController::class, 'BlogAdd'])->name('blog-add');

Route::post('blog/store', [BlogController::class, 'BlogStore'])->name('blog-store');

Route::get('blog/manage', [BlogController::class, 'BlogManage'])->name('blog-manage');

Route::get('blog/edit/{id}', [BlogController::class, 'BlogEdit'])->name('blog-edit');

Route::post('blog/update/', [BlogController::class, 'BlogUpdate'])->name('blog-update');

Route::get('blog/delete/{id}', [BlogController::class, 'BlogDelete'])->name('blog-delete');

Route::get('blog/inactive/{id}', [BlogController::class, 'BlogInactive'])->name('blog.inactive');

Route::get('blog/active/{id}', [BlogController::class, 'BlogActive'])->name('blog.active');




// policy
Route::get('policy/add', [PolicyController::class, 'PolicyAdd'])->name('policy-add');

Route::post('policy/store', [PolicyController::class, 'PolicyStore'])->name('policy-store');

Route::get('policy/manage', [PolicyController::class, 'PolicyManage'])->name('policy-manage');

Route::get('policy/edit/{id}', [PolicyController::class, 'PolicyEdit'])->name('policy-edit');

Route::post('policy/update/', [PolicyController::class, 'PolicyUpdate'])->name('policy-update');

Route::get('policy/delete/{id}', [PolicyController::class, 'PolicyDelete'])->name('policy-delete');


// terms
Route::get('terms/add', [PolicyController::class, 'TermsAdd'])->name('terms-add');

Route::post('terms/store', [PolicyController::class, 'TermsStore'])->name('terms-store');

Route::get('terms/manage', [PolicyController::class, 'TermsManage'])->name('terms-manage');

Route::get('terms/edit/{id}', [PolicyController::class, 'TermsEdit'])->name('terms-edit');

Route::post('terms/update/', [PolicyController::class, 'TermsUpdate'])->name('terms-update');

Route::get('terms/delete/{id}', [PolicyController::class, 'termsDelete'])->name('terms-delete');


// Admin Client All Routes

Route::prefix('ind')->group(function(){

    Route::get('/add', [IndController::class, 'AddInd'])->name('add-ind');

    Route::post('/store', [IndController::class, 'StoreInd'])->name('store-ind');

    Route::get('/manage', [IndController::class, 'ManageInd'])->name('manage-ind');

    Route::get('/edit/{id}', [IndController::class, 'EditInd'])->name('edit-ind');

    Route::post('/update', [IndController::class, 'IndUpdate'])->name('update-ind');

    Route::get('/delete/{id}', [IndController::class, 'DeleteInd'])->name('delete-ind');


});


//basic setting
Route::get('/setting', [basicsettingController::class, 'setting'])->name('add.setting');
Route::post('/setting/update', [basicsettingController::class, 'settingUpdate'])->name('setting.update');


//admin slider

Route::prefix('slide')->group(function(){

    Route::get('/add', [slideController::class, 'AddSlide'])->name('create-add');

     Route::post('/store', [slideController::class, 'StoreSlide'])->name('slide-store');

     Route::get('/manage', [slideController::class, 'ManageSlide'])->name('slide-manage');

     Route::get('/edit/{id}', [slideController::class, 'Edit'])->name('slide_edit');

     Route::post('/update', [slideController::class, 'SlideUpdate'])->name('slide-update');

     Route::get('/delete/{id}', [slideController::class, 'DeleteSlide'])->name('slide_delete');

     Route::get('/inactive/{id}', [slideController::class, 'InActiveSlide'])->name('slide_inactive');

     Route::get('/active/{id}', [slideController::class, 'ActiveSlide'])->name('slide_active');
     Route::get('/details/{id}', [slideController::class, 'slideDetails'])->name('slide_details');


});



Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth'])->name('dashboard');

require __DIR__.'/auth.php';
