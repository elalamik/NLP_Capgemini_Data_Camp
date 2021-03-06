?	??l??B@??l??B@!??l??B@	??(?I?????(?I???!??(?I???"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6??l??B@?7?Gn-A@1?????_??A(?r???I?'???I??Y???????*	-???Y@2U
Iterator::Model::ParallelMapV2???-c??!???yD@)???-c??1???yD@:Preprocessing2F
Iterator::Model?.??[<??!??P??O@)?f??j+??1HK?\?95@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??7????!??{?f3@)?Nx	N}??1?}?\'?/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?????!U??A?&@)?????w?1? @_??@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??&?w?!??2??@)??&?w?1??2??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip`???~???!g>?O5?B@)??j?=&r?1#???k`@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor	n?l??k?!?&????
@)	n?l??k?1?&????
@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??S??!???8ҿ,@)?vöEi?1?A2@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??(?I???I?A?S?kX@Q?Te??/??Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?7?Gn-A@?7?Gn-A@!?7?Gn-A@      ??!       "	?????_???????_??!?????_??*      ??!       2	(?r???(?r???!(?r???:	?'???I???'???I??!?'???I??B      ??!       J	??????????????!???????R      ??!       Z	??????????????!???????b      ??!       JGPUY??(?I???b q?A?S?kX@y?Te??/???"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsSoh݅??!Soh݅??"<
sequential_76/dense_230/SoftmaxSoftmax?~3`7??!2?n?i???"<
sequential_76/dense_228/MatMulMatMul?:??KÑ?!?????0"J
.gradient_tape/sequential_76/dense_230/MatMul_1MatMul8???Uǐ?!4=pϽ-??"J
.gradient_tape/sequential_76/dense_229/MatMul_1MatMul?????!??"J
,gradient_tape/sequential_76/dense_228/MatMulMatMul? \????!*~????0"<
sequential_76/dense_229/MatMulMatMul? \????!o?????0"K
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdamMJ?M????!my>'s???"a
Dgradient_tape/sequential_76/batch_normalization_36/moments/truediv_1RealDiv?3?I???!Ӌ?k???"I
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam??a=???!P?v??M??Q      Y@Y??(??(.@a?뺮?:U@qF????R@y??<?[??"?
both?Your program is POTENTIALLY input-bound because 92.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?4.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?75.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 