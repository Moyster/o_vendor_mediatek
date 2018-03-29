# Pre-Oreo Mediatek common-tree
> such repo, much nice, wow!

# How to download ?
Download / git clone this repository to :  
`$android_src/vendor/mediatek`  
or copy [vmtk.xml](https://raw.githubusercontent.com/Moyster/o_vendor_mediatek/los-15.0/vmtk.xml) to :  
`$android_src/.repo/local_manifests/`  
then simply `repo sync` your sources  

# How to use ?
Include both `VendorConfig.mk` & `VendorProduct.mk` in your device tree like so :  
- `BoardConfig.mk` :  
`-include vendor/mediatek/VendorConfig.mk`  
  
- `device(_product).mk` :  
`-include vendor/mediatek/VendorProduct.mk`  
Note: add these lines at the bottom of the mentioned files

# How to apply the patches ?
Patches located in the patches folder can be applied from the root of your android sources :  
`. vendor/mediatek/patches/install.sh` & `. vendor/mediatek/patches/uninstall.sh` 

# How to configure libshim ?
Libshim is divided into bits which will generate `LINKER_FORCED_SHIM_LIBS` for you, you don't need to `export LD_SHIM_LIBS`.  
The only configuration libshim needs is the following flags :  
`#LIBSHIM_XLOG_SYMBOLS :=true`  
`#LIBSHIM_SND_SYMBOLS := true`  
`#LIBSHIM_UI_SYMBOLS := true`  
`#LIBSHIM_GUI_SYMBOLS := true`  
`#LIBSHIM_OMX_SYMBOLS := true`  
`#LIBSHIM_BIONIC_SYMBOLS := true`
`#LIBSHIM_AGPS_SYMBOLS := true`  
`#LIBSHIM_ATOMIC_SYMBOLS := true`  
(copy/paste in `BoardConfig.mk` & uncomment the flags you need)

# Optional :
- building TWRP in LOS-15.x tree (temp fix) : `patches/optional/0001-TEMP-TWRP-fix-recovery-build-with-f2fs-on-LOS-15.x-t.patch`
