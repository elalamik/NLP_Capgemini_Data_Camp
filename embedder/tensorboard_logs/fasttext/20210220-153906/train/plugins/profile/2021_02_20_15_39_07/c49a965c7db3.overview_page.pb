?	I/j???@@I/j???@@!I/j???@@	????????????!??????"w
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails6I/j???@@?(	???>@1??eO???At?v?4E??I??D-ͭ??Y?Բ??H??*	?x?&1?V@2U
Iterator::Model::ParallelMapV2ݳ??r??!B,3?^?A@)ݳ??r??1B,3?^?A@:Preprocessing2F
Iterator::Modelͮ{+??!??쵛+M@)?????>??1??r?y?6@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatz?(???!?????4@)???B?i??1?q1??b0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatey?z?L???!JXz?l*@)5)?^?x?1O??'?@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????:8x?!D?]?@)????:8x?1D?]?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?]???T??!]iJd?D@)0?Qd??t?1jJF3F;@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??m?2k?!???c~N@)??m?2k?1???c~N@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?ǁWˍ?!???Rl0@)?0?*e?1@{d???@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 91.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).moderate"?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??????Iz?Z??DX@QQ?òŦ@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?(	???>@?(	???>@!?(	???>@      ??!       "	??eO?????eO???!??eO???*      ??!       2	t?v?4E??t?v?4E??!t?v?4E??:	??D-ͭ????D-ͭ??!??D-ͭ??B      ??!       J	?Բ??H???Բ??H??!?Բ??H??R      ??!       Z	?Բ??H???Բ??H??!?Բ??H??b      ??!       JGPUY??????b qz?Z??DX@yQ?òŦ@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits???????!???????"-
IteratorGetNext/_1_Senda?????!???i????"=
sequential_214/dense_642/MatMulMatMul?7? ??!?o?Kξ??0"=
 sequential_214/dense_644/SoftmaxSoftmax$??ؔ?!&Od?Y??"K
-gradient_tape/sequential_214/dense_642/MatMulMatMult??????!Ԁ8???0"=
sequential_214/dense_643/MatMulMatMul??????!'?Ѽ????0"K
-gradient_tape/sequential_214/dense_643/MatMulMatMul???"煑?!5 /???0"K
/gradient_tape/sequential_214/dense_644/MatMul_1MatMul?%?yc??!???f????"K
/gradient_tape/sequential_214/dense_643/MatMul_1MatMul??
????!?X????"=
sequential_214/dense_644/MatMulMatMul
x|?r|??!c<??????0Q      Y@Y??(??(.@a?뺮?:U@q?`HYR~I@y?	????"?
both?Your program is POTENTIALLY input-bound because 91.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
moderate?5.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?51.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"GPU(: B 