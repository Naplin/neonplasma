(local neonplasma (. (require (.. :neonplasma)) :neonplasma))

(local colors {:color0 neonplasma.base02
               :color1 neonplasma.base10
               :color2 neonplasma.base08
               :color3 neonplasma.base00
               :color6 neonplasma.base04
               :color7 neonplasma.base09
               :color8 neonplasma.base14
               :color9 neonplasma.base12
               :color10 neonplasma.base13})

{:replace {:a {:fg (. colors :color0) :bg (. colors :color1)}
           :b {:fg (. colors :color2) :bg (. colors :color3)}}
 :inactive {:a {:fg (. colors :color0) :bg (. colors :color7)}
            :b {:fg (. colors :color6) :bg (. colors :color3)}
            :z {:fg (. colors :color0) :bg (. colors :color3)}}
 :normal {:a {:fg (. colors :color0) :bg (. colors :color7)}
          :b {:fg (. colors :color6) :bg (. colors :color3)}
          :c {:fg (. colors :color6) :bg (. colors :color3)}
          :z {:fg (. colors :color6) :bg (. colors :color3)}}
 :visual {:a {:fg (. colors :color0) :bg (. colors :color8)}
          :b {:fg (. colors :color6) :bg (. colors :color3)}
          :y {:fg (. colors :color6) :bg (. colors :color3)}
          :z {:fg (. colors :color9) :bg (. colors :color3)}}
 :insert {:a {:fg (. colors :color0) :bg (. colors :color9)}
          :b {:fg (. colors :color6) :bg (. colors :color3)}
          :z {:fg (. colors :color9) :bg (. colors :color3)}}
 :command {:a {:fg (. colors :color0) :bg (. colors :color10)}}}

